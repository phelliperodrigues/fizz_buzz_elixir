defmodule FizzBuzzTest do
  use ExUnit.Case

  describe "build/1" do
    test "when a valid file is provided, returns the converted list" do
      exprected_response = {:ok, [1, 2, :fizz, 4, :buzz, :buzz, :fizzbuzz, :buzz]}
      assert FizzBuzz.build("numbers.txt") == exprected_response
    end

    test "when an invalid file is provided, returns an error " do
      exprected_response = {:error, "Error reading the file: enoent"}
      assert FizzBuzz.build("invalid.txt") == exprected_response
    end
  end
end
