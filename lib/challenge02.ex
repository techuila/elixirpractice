defmodule Challenge02 do
  @moduledoc """
    Day 2 Challenge: Merge and Sum Maps
    Objective:
      Write a function named merge_and_sum/2 that takes two maps as input. Both maps have strings as keys and integers as values.
      The function should return a new map that contains all keys from both input maps.
      If a key exists in both maps, its value in the output map should be the sum of its values from the input maps.
      If a key exists in only one map, its value in the output map should be the same as in the input map.
  """

  def merge_and_sum(map1, map2) do
    Map.merge(map1, map2, fn _key, value1, value2 -> value1 + value2 end)
  end
end

defmodule ExampleUsage02 do
  def run do
    IO.inspect(Challenge02.merge_and_sum(%{"a" => 10, "b" => 20}, %{"a" => 5, "c" => 30}))
  end
end

# Running the examples
ExampleUsage02.run()
