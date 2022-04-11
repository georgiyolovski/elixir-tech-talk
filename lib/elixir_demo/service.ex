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

  # def users(params) do
  #   case params do
  #     %{"name" => ""} ->
  #       %{"error" => "Invalid param"}

  #     %{"name" => name} ->
  #       Repo.all()
  #       |> Enum.filter(fn user -> user.name == name end)

  #     _ ->
  #       Repo.all()
  #   end
  # end

  # def users(%{"name" => ""}) do
  #   %{"error" => "Invalid param"}
  # end

  # def users(%{"name" => name}) do
  #   Repo.all()
  #   |> Enum.filter(fn x -> x.name == name end)
  # end

  # def users(_) do
  #   Repo.all()
  # end
end
