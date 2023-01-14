defmodule BlogWeb.PageController do
  use BlogWeb, :controller

  def home(conn, _params) do
    conn
    |> assign(:articles, Gen.Articles.articles())
    |> render(:home)
  end

  def books(conn, _params) do
    conn
    |> assign(:page_title, "Book, Books, Books")
    |> assign(
      :meta_description,
      "A mix of tech, fiction, business and life... sometimes I read, sometimes I am read to."
    )
    |> assign(:books, Gen.Books.books())
    |> render(:books)
  end

  def demos(conn, _params) do
    conn
    |> assign(:page_title, "Technical Demos")
    |> assign(
      :meta_description,
      "A collection of demos that have been built to support a talk, to learn a concept, or maybe just for fun."
    )
    |> render(:demos)
  end

  def snippets(conn, _params) do
    conn
    |> assign(:page_title, "Technical Tidbits")
    |> assign(
      :meta_description,
      "A collection of code snippets of sometimes rarely used, or perhaps difficult to remember tasks, commands and code snippets."
    )
    |> assign(:snippets, Gen.Snippets.snippets())
    |> render(:snippets)
  end

  def article(conn, %{"slug" => slug}) do
    meta = Gen.Articles.meta(slug)

    conn
    |> assign(:page_title, meta[:title])
    |> assign(
      :meta_description,
      "More details about '#{meta[:title]}' written (last updated) on #{meta[:datetime]}."
    )
    |> assign(:slug, slug)
    |> assign(:title, meta[:title])
    |> assign(:datetime, meta[:datetime])
    |> assign(:body, Gen.Articles.article(slug))
    |> render(:article)
  end
end
