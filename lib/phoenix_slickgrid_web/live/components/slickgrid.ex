defmodule PhoenixSlickgridWeb.Components.Slickgrid do
  use Surface.LiveComponent

  prop name, :string, required: true
  prop value, :string

  @impl true
  def render(assigns) do
    ~F"""
    <div :hook="Slickgrid" id={"slickgrid-#{@name}"} data-value={@value}>
      <div id="grid-render">
      </div>
    </div>
    """
  end
end
