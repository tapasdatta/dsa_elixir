defmodule BinarySearchTest do
  use ExUnit.Case
  doctest BinarySearch

  test "finds the element in the list" do
    assert BinarySearch.search([1, 2, 3, 4, 5], 3) == {:ok, 2}
  end

  test "returns :not_found if the element is not in the list" do
    assert BinarySearch.search([1, 2, 3, 4, 5], 6) == :not_found
  end

  test "handles an empty list" do
    assert BinarySearch.search([], 3) == :not_found
  end
end
