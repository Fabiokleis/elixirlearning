defmodule FizzBuzzTest do
  use ExUnit.Case

  describe "build/1" do
    test "when a valid file is provided, returns the converted list" do
      expected =
        {:ok,
         [1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz", 11, "Fizz", 13, 14, "FizzBuzz"]}

      assert FizzBuzz.build("sample.txt") == expected
    end

    test "when a invalid file is provided, returns an error" do
      expected = {:error, "Could not read file cause: enoent"}
      assert FizzBuzz.build("invalid_file.txt") == expected
    end
  end
end
