defmodule ElixirpracticeTest do
  use ExUnit.Case
  doctest Elixirpractice

  test "greets the world" do
    assert Elixirpractice.hello() == :world
  end
end
