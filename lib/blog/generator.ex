defmodule Blog.Generator do
  @blogs_dir "../writing/blog"

  def run(dir \\ @blogs_dir) do
    File.rm_rf("./priv/static/images/blog")
    File.cp_r(dir, "./priv/static/images/blog")

    slugs =
      dir
      |> slugs()
      |> Enum.map(fn s ->
        {s, metadata(s)}
      end)
      |> Enum.sort_by(fn {_s, m} -> m["datetime"] end, :desc)
      |> Enum.map(fn {s, _} -> s end)

    gen_articles = """
    defmodule Gen.Articles do
      def articles() do
        [
          #{slugs |> Enum.map(fn slug ->
      meta = metadata(slug)

      """
      %{
        title: "#{title(slug, :escape)}",
        body: \"\"\"
        #{summary(slug)}
        \"\"\",
        datetime: "#{meta["datetime"]}",
        slug: "#{slug}"
      },
      """
    end) |> Enum.join("\n")}
        ]
      end

      #{slugs |> Enum.map(fn slug -> """
      def article("#{slug}") do
        \"\"\"
        #{article(slug)}
        \"\"\"
      end
      """ end)}

      #{slugs |> Enum.map(fn slug -> """
      def title("#{slug}"),  do: "#{title(slug, :escape)}"
      """ end)}

    end
    """

    File.write("./lib/gen/articles.ex", gen_articles)
  end

  def slugs(dir \\ @blogs_dir) do
    dir
    |> File.ls!()
    |> Enum.filter(&String.ends_with?(&1, ".md"))
    |> Enum.map(&String.split_at(&1, -3))
    |> Enum.map(fn {slug, _} -> slug end)
  end

  defp filename(slug, dir \\ @blogs_dir), do: "#{dir}/#{slug}.md"

  def title(slug, mode, dir \\ @blogs_dir) do
    title =
      slug
      |> filename(dir)
      |> File.stream!()
      |> Enum.take(1)
      |> case do
        [] -> slug
        [title] -> title |> String.replace(~r{^#\s*}, "")
      end

    case mode do
      :escape -> String.replace(title, "\"", "\\\"")
      _else -> title
    end
    |> String.trim()
  end

  def metadata(slug, dir \\ @blogs_dir) do
    slug
    |> filename(dir)
    |> File.stream!()
    |> Enum.filter(&String.starts_with?(&1, "#meta"))
    |> Enum.map(fn raw_line ->
      raw_line
      |> String.replace(~r{^#meta}, "")
      |> String.trim()
      |> String.split(" ", parts: 2)
      |> case do
        [k, v] -> {k, v}
      end
    end)
    |> Enum.into(%{})
  end

  defp summary(slug) do
    slug
    |> filename()
    |> File.stream!()
    |> Enum.chunk_while(
      {:before, []},
      fn
        "## Summary\n", _ ->
          {:cont, nil, {:inside, []}}

        "## Article\n", {_, acc} ->
          {:halt, acc}

        line, {:inside, all} ->
          {:cont, nil, {:inside, [line | all]}}

        _line, asis ->
          {:cont, nil, asis}
      end,
      fn acc -> {:cont, acc |> Enum.reverse(), acc} end
    )
    |> to_html()
  end

  def article(slug) do
    slug
    |> filename()
    |> File.stream!()
    |> Enum.drop_while(&(&1 != "## Article\n"))
    |> Enum.drop(1)
    |> to_html()
  end

  defp to_html(chunked) do
    chunked
    |> List.flatten()
    |> Enum.map(&format_image/1)
    |> Enum.join()
    |> Earmark.as_html!(%Earmark.Options{
      code_class_prefix: "language-",
      smartypants: false
    })
    |> String.split("\n")
    |> Enum.map(&"  #{&1}\n")
    |> Enum.join()
    |> String.trim()
  end

  defp format_image(nil), do: nil

  defp format_image(line) do
    case Regex.run(~r{!\[.*\]\((.*)\)}, line) do
      nil ->
        line

      [_, path] ->
        cond do
          String.starts_with?(path, "http") ->
            line

          String.starts_with?(path, "/") ->
            line

          :else ->
            String.replace(line, "(#{path})", "(/images/blog/#{path})")
        end
    end
  end
end
