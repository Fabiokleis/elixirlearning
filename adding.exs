defmodule Adding do
  def plus_three(number), do: number + 3
end

# Enum.map([1, 2, 3], fn x -> x + 3 end)
# Enum.map([1, 2, 3], &(&1 + 3))
# Enum.map([1, 2, 3], fn x -> Adding.plus_three(x) end)
# Enum.map([1, 2, 3], &Adding.plus_three(&1))
# Enum.map(Enum.to_list(1..10), &Adding.plus_three/1)
