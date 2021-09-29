defmodule PhoenixSlickgrid.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      PhoenixSlickgridWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: PhoenixSlickgrid.PubSub},
      # Start the Endpoint (http/https)
      PhoenixSlickgridWeb.Endpoint
      # Start a worker by calling: PhoenixSlickgrid.Worker.start_link(arg)
      # {PhoenixSlickgrid.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: PhoenixSlickgrid.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    PhoenixSlickgridWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
