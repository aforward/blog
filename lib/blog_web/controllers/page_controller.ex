defmodule BlogWeb.PageController do
  use BlogWeb, :controller

  def home(conn, _params) do
    conn
    |> assign(:articles, Gen.Articles.articles())
    |> render(:home)
  end

  def article(conn, %{"slug" => slug}) do
    conn
    |> assign(:slug, slug)
    |> assign(:title, Gen.Articles.title(slug))
    |> assign(:body, Gen.Articles.article(slug))
    |> render(:article)
  end
end
