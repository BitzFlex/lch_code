defmodule LchCodeTest do
  use ExUnit.Case
  doctest LchCode

  test "greets the world" do
    assert LchCode.hello() == :world
  end
end
