defmodule ListHelper do
  def sum([]), do: 0

  def sum([head | tail]) do
    head + sum(tail)
  end
end

IO.puts ListHelper.sum([1,2,3,4,5])
