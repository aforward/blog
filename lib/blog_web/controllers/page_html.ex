defmodule BlogWeb.PageHTML do
  alias BlogWeb.Spotlight
  use BlogWeb, :html

  embed_templates "page_html/*"
end
