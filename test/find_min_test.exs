defmodule FindMinTest do
  use ExUnit.Case
  doctest FindMin

  test "finds the minimum in an empty list" do
    assert FindMin.find_min([]) == []
  end

  test "finds the minimum in a list with one element" do
    assert FindMin.find_min([1]) == {:ok, 1}
  end

  test "finds the minimum in a list with multiple elements" do
    assert FindMin.find_min([3, 1, 4, 1, 5, 9]) == {:ok, 1}
    assert FindMin.find_min([5, 4, 3, 2, 1]) == {:ok, 1}
    assert FindMin.find_min([1, 2, 3, 4, 5]) == {:ok, 1}
  end
end
