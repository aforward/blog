defmodule Blog.Generator do
  @writing_dir "../writing"

  def run(dir \\ @writing_dir) do
    # publish_blog("#{dir}/blog")
    publish_books("#{dir}/books")
  end

  def publish_books(dir) do
    File.rm_rf("./priv/static/images/books")
    File.cp_r("#{dir}/covers", "./priv/static/images/book-covers")

    slugs = slugs(dir)

    gen_books = """
    defmodule Gen.Books do
      def books() do
        [
          #{slugs |> Enum.map(fn slug ->
      meta = metadata(slug, dir)

      """
      %{
        title: "#{title(slug, :escape, dir)}",
        author: "#{author(slug, :escape, dir)}",
        published: "#{meta["published"]}",
        url: "/images/book-covers/#{slug}.png",
        slug: "#{slug}"
      },
      """
    end) |> Enum.join("\n")}
        ]
      end
    end
    """

    File.write("./lib/gen/books.ex", gen_books)
  end

  def publish_blog(dir) do
    File.rm_rf("./priv/static/images/blog")
    File.cp_r(dir, "./priv/static/images/blog")

    slugs = slugs(dir)

    gen_articles = """
    defmodule Gen.Articles do
      def articles() do
        [
          #{slugs |> Enum.map(fn slug ->
      meta = metadata(slug, dir)

      """
      %{
        title: "#{title(slug, :escape, dir)}",
        body: \"\"\"
        #{summary(slug, dir)}
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
        #{article(slug, dir)}
        \"\"\"
      end
      """ end)}

      #{slugs |> Enum.map(fn slug -> """
      def title("#{slug}"),  do: "#{title(slug, :escape, dir)}"
      """ end)}

    end
    """

    File.write("./lib/gen/articles.ex", gen_articles)
  end

  def slugs(dir) do
    dir
    |> File.ls!()
    |> Enum.filter(&String.ends_with?(&1, ".md"))
    |> Enum.map(&String.split_at(&1, -3))
    |> Enum.map(fn {slug, _} -> slug end)
    |> Enum.map(fn s ->
      {s, metadata(s, dir)}
    end)
    |> Enum.sort_by(fn {_s, m} -> m["datetime"] end, :desc)
    |> Enum.map(fn {s, _} -> s end)
  end

  defp filename(slug, dir), do: "#{dir}/#{slug}.md"

  def title(slug, mode, dir), do: line(slug, 1, mode, dir)
  def author(slug, mode, dir), do: line(slug, 2, mode, dir)

  def line(slug, line, mode, dir) do
    line =
      slug
      |> filename(dir)
      |> File.stream!()
      |> Stream.drop(line - 1)
      |> Enum.take(1)
      |> case do
        [] -> slug
        [line] -> line |> String.replace(~r{^#*\s*}, "")
      end

    case mode do
      :escape -> String.replace(line, "\"", "\\\"")
      _else -> line
    end
    |> String.trim()
  end

  def metadata(slug, dir) do
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

  defp summary(slug, dir) do
    slug
    |> filename(dir)
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

  def article(slug, dir) do
    slug
    |> filename(dir)
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
