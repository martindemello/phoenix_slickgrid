defmodule PhoenixSlickgridWeb.DemoLive.Index do
  use Surface.LiveView
  alias PhoenixSlickgridWeb.Components.Slickgrid

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def render(assigns) do
    ~F"""
    <div>Slickgrid:</div>
    <Slickgrid name="demogrid" id="demogrid" />
    """
  end
end
