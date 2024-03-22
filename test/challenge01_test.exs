defmodule Challenge01.Test do
  use ExUnit.Case
  doctest Challenge01

  test "should return list of tuples" do
    assert Challenge01.custom_zip([1, 2, 3], ["a", "b", "c"]) == [{1, "a"}, {2, "b"}, {3, "c"}]
    assert Challenge01.custom_zip([4, 5, 6], ["d", "e", "f"]) == [{4, "d"}, {5, "e"}, {6, "f"}]
  end

  test "should return list of tuples that are empty" do
    assert Challenge01.custom_zip([], []) == []
  end

  test "should ignore excess elements" do
    assert Challenge01.custom_zip([1, 2, 3], ["a", "b", "c"]) == [{1, "a"}, {2, "b"}, {3, "c"}]
    assert Challenge01.custom_zip([1, 2], ["a", "b", "c", "d"]) == [{1, "a"}, {2, "b"}]
    assert Challenge01.custom_zip([1, 2, 3], ["a"]) == [{1, "a"}]
  end

  test "should return an empty list" do
    assert Challenge01.custom_zip([], [1, 2, 3]) == []
    assert Challenge01.custom_zip([1, 2, 3], []) == []
  end
end
