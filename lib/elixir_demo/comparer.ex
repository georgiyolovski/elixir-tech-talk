defmodule ElixirDemo.UserComparer do

  @doc """
  Compares two users by age

  ## Examples

    iex> ElixirDemo.UserComparer.call(%{age: 5}, %{age: 3})
    false

    iex> ElixirDemo.UserComparer.call(%{age: 10, name: "C"}, %{age: 10, name: "A"})
    false
  """
  def call(%{age: first_age, name: first_name}, %{age: second_age, name: second_name})
    when first_age == second_age do
      first_name <= second_name
    end

  def call(%{age: first_age}, %{age: second_age}) do
    first_age <= second_age
  end
end
