defmodule BlogWeb.Books do
  use Phoenix.Component

  def summary(assigns) do
    ~H"""
    <li>
      <div class="space-y-4">
        <div class="aspect-w-3 aspect-h-4">
          <img class="rounded-lg object-cover shadow-lg" src={assigns.url} alt="" />
        </div>

        <div class="space-y-2">
          <div class="space-y-1 font-medium leading-6">
            <h3 class="text-gray-600 text-xs"><%= assigns.title %></h3>
            <p class="text-gray-400 text-xs"><%= assigns.author %></p>
          </div>
        </div>
      </div>
    </li>
    """
  end
end
