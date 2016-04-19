defmodule MyMap do
  def map([], _) do
    []
  end

  def map([h|t], f) do
    [f.(h) | map(t, f)]
  end
end

square = fn x -> x * x end
IO.inspect MyMap.map(Enum.to_list(1..5), square)

# Same thing with short syntax
IO.inspect MyMap.map(Enum.to_list(1..5), &(&1 * &1))
