defmodule BlogWeb.PageController do
  use BlogWeb, :controller

  def home(conn, _params) do
    conn
    |> assign(:articles, Gen.Articles.articles())
    |> render(:home)
  end

  def books(conn, _params) do
    conn
    |> assign(:books, Gen.Books.books())
    |> render(:books)
  end

  def demos(conn, _params) do
    conn
    |> render(:demos)
  end

  def snippets(conn, _params) do
    conn
    |> assign(:snippets, Gen.Snippets.snippets())
    |> render(:snippets)
  end

  def article(conn, %{"slug" => slug}) do
    meta = Gen.Articles.meta(slug)

    conn
    |> assign(:slug, slug)
    |> assign(:title, meta[:title])
    |> assign(:datetime, meta[:datetime])
    |> assign(:body, Gen.Articles.article(slug))
    |> render(:article)
  end
end
