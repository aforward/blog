defmodule Blog do
  @moduledoc """
  Blog keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

  def metadata(filename) do
    filename
    |> File.stream!()
    |> Enum.filter(&String.starts_with?(&1, "#meta"))
  end

  def article(filename) do
    filename
    |> File.stream!()
    |> Enum.reject(&String.starts_with?(&1, "#meta"))
    |> Enum.join()
    |> Earmark.as_ast!()
  end
end
