defmodule ElixirDemo.DiscountCalculator do
  @doc """
  Calculate user discount based on age

  ## Examples:

  ```
  iex> ElixirDemo.DiscountCalculator.calculate(%{"age" => 10})
  20

  iex> ElixirDemo.DiscountCalculator.calculate(%{"age" => 25})
  0

  iex> ElixirDemo.DiscountCalculator.calculate(%{"age" => 67})
  20
  ```
  """
  def calculate(%{"age" => age}) when age < 18 or age > 65 do
    20
  end

  def calculate(%{"age" => _}) do
    0
  end
end
