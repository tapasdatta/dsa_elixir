defmodule FactorialTest do
  use ExUnit.Case
  doctest Factorial

  test "factorial of 0 returns 1" do
    assert Factorial.fact(0) == 1
  end

  test "factorial of 1 returns 1" do
    assert Factorial.fact(1) == 1
  end

  test "factorial of 2 returns 2" do
    assert Factorial.fact(2) == 2
  end

  test "factorial of 3 returns 6" do
    assert Factorial.fact(3) == 6
  end

  test "factorial of 4 returns 24" do
    assert Factorial.fact(4) == 24
  end

  test "factorial of 5 returns 120" do
    assert Factorial.fact(5) == 120
  end

  test "factorial of 10 returns 3628800" do
    assert Factorial.fact(10) == 3_628_800
  end
end
