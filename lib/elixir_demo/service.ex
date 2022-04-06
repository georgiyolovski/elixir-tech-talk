defmodule ElixirDemo.Service do
  alias ElixirDemo.Repo
  alias ElixirDemo.UserComparer

  def users(%{"name" => ""}) do
    %{"error" => "Invalid param"}
  end

  def users(%{"name" => name}) do
    Repo.all()
    |> Enum.filter(fn x -> x.name == name end)
  end

  def users(%{}) do
    Repo.all()
    |> Enum.sort(&UserComparer.call/2)
  end
end
