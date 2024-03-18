defmodule Challenge do
  def custom_zip(list1, list2) do
    len1 = length(list1) - 1
    len2 = length(list2) - 1

    Enum.map(0..if(len1 < len2, do: len1, else: len2), fn i ->
      {Enum.at(list1, i), Enum.at(list2, i)}
    end)
  end
end

# Example usage
defmodule ExampleUsage do
  def run do
    IO.inspect(Challenge.custom_zip([1, 2, 3], ["a", "b", "c"]))
    IO.inspect(Challenge.custom_zip([1, 2], ["a", "b", "c", "d"]))
    IO.inspect(Challenge.custom_zip([1, 2, 3], ["a"]))
    # Add more examples as needed
  end
end

ExampleUsage.run()
