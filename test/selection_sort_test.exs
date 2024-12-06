defmodule SelectionSortTest do
  use ExUnit.Case
  doctest SelectionSort

  test "sorts an empty list" do
    assert SelectionSort.sort([]) == []
  end

  test "sorts a list with one element" do
    assert SelectionSort.sort([1]) == [1]
  end

  test "sorts a list with multiple elements" do
    assert SelectionSort.sort([3, 1, 2]) == [1, 2, 3]
  end

  test "sorts a list with duplicate elements" do
    assert SelectionSort.sort([4, 2, 2, 3, 1]) == [1, 2, 2, 3, 4]
  end

  test "sorts a list with negative elements" do
    assert SelectionSort.sort([3, -1, 2, -2]) == [-2, -1, 2, 3]
  end
end
