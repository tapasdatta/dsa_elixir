defmodule LinearSearchTest do
  use ExUnit.Case
  doctest LinearSearch

  test "searches for an item in an empty list" do
    assert LinearSearch.search([], 1) == :not_found
  end

  test "searches for an item in a list with one element" do
    assert LinearSearch.search([1], 1) == {:ok, 0}
    assert LinearSearch.search([1], 2) == :not_found
  end

  test "searches for an item in a list with multiple elements" do
    assert LinearSearch.search([1, 2, 3, 4], 3) == {:ok, 2}
    assert LinearSearch.search([1, 2, 3, 4], 5) == :not_found
  end

  test "searches for an item in a list with duplicate elements" do
    assert LinearSearch.search([1, 2, 2, 3, 4], 2) == {:ok, 1}
  end

  test "searches for an item in a list with negative elements" do
    assert LinearSearch.search([3, -1, 2, -2], -2) == {:ok, 3}
    assert LinearSearch.search([3, -1, 2, -2], 4) == :not_found
  end
end
