defmodule BlogWeb.PageHTML do
  alias BlogWeb.{Spotlight, Books}
  use BlogWeb, :html
  import BlogWeb.Helper

  embed_templates "page_html/*"
end
