defmodule BlogWeb.QuizLive do
  use BlogWeb, :live_view
  alias ProductivityGrader.{Authenticator, Social, Sample}

  alias BlogWeb.QuizLive.{
    Index,
    New,
    Admin,
    Quiz
  }

  # Have the student pick a quiz by slug
  @impl true
  def mount(_params, _session, %{assigns: %{live_action: :index}} = socket) do
    socket
    |> assign(:display, :index)
    |> my_reply(:ok)
  end

  # Create a new quiz
  @impl true
  def mount(_params, _session, %{assigns: %{live_action: :new}} = socket) do
    socket
    |> assign(:display, :new)
    |> assign(:quiz, default_quiz())
    |> my_reply(:ok)
  end

  # Administer a quiz
  @impl true
  def mount(_params, _session, %{assigns: %{live_action: :admin}} = socket) do
    socket
    |> assign(:display, :admin)
    |> my_reply(:ok)
  end

  # Take a quiz
  @impl true
  def mount(_params, _session, %{assigns: %{live_action: :quiz}} = socket) do
    socket
    |> assign(:display, :quiz)
    |> my_reply(:ok)
  end

  @impl true
  def render(assigns) do
    ~H"""
    <%= case @display do
      :index ->
        live_component(Index, assigns)

      :new ->
        live_component(New, assigns)

      :admin ->
        live_component(Admin, assigns)

      :quiz ->
        live_component(Quiz, assigns)
    end %>
    """
  end

  defp default_quiz() do
    %{
      title: "Quiz",
      identifier: random_string(10),
      slug: random_string(4)
    }
  end

  def random_string(n) do
    symbols = '123456789abcdefhjkmnpqrstuvwxyz'
    symbol_count = Enum.count(symbols)
    for _ <- 1..n, into: "", do: <<Enum.at(symbols, :crypto.rand_uniform(0, symbol_count))>>
  end

  defp my_reply(socket, ok), do: {ok, socket}
end
