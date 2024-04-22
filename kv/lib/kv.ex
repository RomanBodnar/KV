defmodule KV do
  @moduledoc """
  Documentation for `KV`.
  """
  use Application
  require Logger
  @impl true
  def start(_type, _args) do
    Logger.debug("Starting a supervisor")
    KV.Supervisor.start_link(name: KV.Supervisor)
  end


end
