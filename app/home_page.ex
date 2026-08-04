defmodule HologramSkeleton.HomePage do
  use Hologram.Page

  route "/"

  layout HologramSkeleton.DefaultLayout

  defp host do
    System.get_env("PHX_HOST") || "example.com"
  end

  def template do
    ~HOLO"<h1>Hello from {host()}!</h1>"
  end
end
