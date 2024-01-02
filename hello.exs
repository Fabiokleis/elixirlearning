#defmodule Greeter do
#  def hello(name) do
#    "Hello, " <> name
#  end
#end

defmodule Greeter do
  def hello(name), do: "Hello, " <> name

  def divs(number), do: divs(number, 1, 0)
  defp divs(number, divq, acc) when divq >= number, do: {divq, acc}
  defp divs(number, divq, acc), do: divs(number, divq * 10, acc + 1)

  def dupl(0, _), do: []
  def dupl(n, term), do: [term|dupl(n-1, term)]

  def dupl_items([]), do: []
  def dupl_items(list), do: Enum.map(list, &dupl(2, &1))
end
