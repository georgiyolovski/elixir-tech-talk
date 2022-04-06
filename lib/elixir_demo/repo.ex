defmodule ElixirDemo.Repo do
  def all() do
    [
      %{id: 1, name: "Pesho", age: 10},
      %{id: 2, name: "Gosho", age: 15},
      %{id: 3, name: "Kiro", age: 10},
      %{id: 3, name: "Tisho", age: 7}
    ]
  end
end
