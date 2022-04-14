defmodule ElixirDemo.Service do
  alias ElixirDemo.Repo

  def users(params) do
    if Map.has_key?(params, "name") do
      if params["name"] == "" do
        %{"error" => "Invalid param"}
      else
        Repo.all()
        |> Enum.filter(fn user -> user["name"] == params["name"] end)
      end
    else
      Repo.all()
    end
  end
end
