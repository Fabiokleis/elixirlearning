defmodule FizzBuzz do
  def build(file_path) do
    file_path
    |> File.read()
    |> handle_file_read()
  end

  defp handle_file_read({:error, reason}), do: {:error, "Could not read file cause: #{reason}"}

  defp handle_file_read({:ok, file}) do
    result =
      file
      |> String.trim()
      |> String.split(",")
      |> Enum.map(&fizz_buzz(String.to_integer(&1)))

    {:ok, result}
  end

  defp fizz_buzz(num) when rem(num, 3) == 0 and rem(num, 5) == 0, do: "FizzBuzz"
  defp fizz_buzz(num) when rem(num, 3) == 0, do: "Fizz"
  defp fizz_buzz(num) when rem(num, 5) == 0, do: "Buzz"
  defp fizz_buzz(num), do: num
end
