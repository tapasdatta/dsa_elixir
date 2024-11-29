defmodule DsaTest do
  use ExUnit.Case
  doctest Dsa

  test "greets the world" do
    assert Dsa.hello() == :world
  end
end
