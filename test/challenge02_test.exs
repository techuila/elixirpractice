defmodule Challenge02.Test do
  use ExUnit.Case
  doctest Challenge02

  test "should return map with all keys" do
    map1 = %{"a" => 10, "b" => 20}
    map2 = %{"a" => 5, "c" => 30}

    result = Challenge02.merge_and_sum(map1, map2)

    assert Map.keys(result) == ["a", "b", "c"]
  end

  test "should handle maps with a large number of keys and values" do
    map1 = %{"a" => 10, "b" => 20}
    map2 = %{"c" => 30, "d" => 40}

    result = Challenge02.merge_and_sum(map1, map2)

    assert Map.keys(result) == ["a", "b", "c", "d"]
    assert Map.values(result) == [10, 20, 30, 40]
  end

  test "should return a map with the sum of values for keys that exist in both maps (positive)" do
    map1 = %{"a" => -10, "b" => -20}
    map2 = %{"a" => -5, "c" => -30}

    result = Challenge02.merge_and_sum(map1, map2)

    assert Map.get(result, "a") == -15
    assert Map.get(result, "b") == -20
    assert Map.get(result, "c") == -30
  end

  test "should return a map with the sum of values for keys that exist in both maps (negative)" do
    map1 = %{"a" => 10, "b" => 20}
    map2 = %{"a" => 5, "c" => 30}

    result = Challenge02.merge_and_sum(map1, map2)

    assert Map.get(result, "a") == 15
    assert Map.get(result, "b") == 20
    assert Map.get(result, "c") == 30
  end
end
