defmodule BlogWeb.HanoiLive.Splash do
  use BlogWeb, :live_component
  alias BlogWeb.HanoiLive.Game

  def render(assigns) do
    class_dec = "easier-#{if assigns.game.num_pieces > 1, do: "on", else: "off"}"
    class_inc = "harder-#{if assigns.game.num_pieces < Hanoi.max_pieces(), do: "on", else: "off"}"

    ~H"""
    <div class="splash-screen">
      <div class="game">
        <h1>Towers of Hanoi</h1>
        <div class="container">
          <div class="left">
            <button phx-click="start_game" class="start">START</button>
            <button phx-click="dec" class={class_dec}>Easier</button>
            <button phx-click="inc" class={class_inc}>Harder</button>
          </div>
          <div class="right">
            <div class="tower">
              <Game.tower tower={assigns.game.display_a} />
            </div>
          </div>
        </div>
      </div>
    </div>
    """
  end
end
