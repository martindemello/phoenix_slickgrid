defmodule PhoenixSlickgridWeb.DemoLive.Index do
  use Surface.LiveView

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~F"Rendering LiveView"
  end
end
