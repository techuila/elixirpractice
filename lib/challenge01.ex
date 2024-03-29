defmodule Challenge01 do
  @moduledoc """
    Day 1 Challenge: Custom Zip Function
    Objective:
      Write a function named custom_zip/2 that takes two lists as input and returns a list of tuples,
      each containing corresponding elements from the two lists.
      If one list is shorter than the other, ignore the excess elements of the longer list.
  """

  def custom_zip(list1, list2) when length(list1) === 0 or length(list2) === 0, do: []

  def custom_zip(list1, list2) do
    len1 = length(list1)
    len2 = length(list2)

    Enum.map(1..if(len1 < len2, do: len1, else: len2), fn i ->
      {Enum.at(list1, i - 1), Enum.at(list2, i - 1)}
    end)
  end
end

# Example usage
defmodule ExampleUsage01 do
  def run do
    IO.inspect(Challenge01.custom_zip([1, 2, 3], ["a", "b", "c"]))
    IO.inspect(Challenge01.custom_zip([1, 2], ["a", "b", "c", "d"]))
    IO.inspect(Challenge01.custom_zip([1, 2, 3], ["a"]))
    # Add more examples as needed
  end
end

ExampleUsage01.run()
