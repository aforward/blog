defmodule BlogWeb.PageHTML do
  alias BlogWeb.{Spotlight, Books}
  use BlogWeb, :html

  embed_templates "page_html/*"
end
