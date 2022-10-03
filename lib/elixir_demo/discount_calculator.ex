defmodule ElixirDemo.DiscountCalculator do

  @doc """
  Calculate discount based on user age

  Examples:

  iex> ElixirDemo.DiscountCalculator.calculate(%{"age" => 15})
  20

  iex> ElixirDemo.DiscountCalculator.calculate(%{"age" => 30})
  0
  """
  def calculate(%{"age" => age}) when age < 18 do
    20
  end

  def calculate(_) do
    0
  end
end
