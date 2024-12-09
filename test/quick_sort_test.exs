defmodule QuickSortTest do
  use ExUnit.Case
  doctest QuickSort

  describe "qsort/1" do
    test "sorts empty list" do
      assert QuickSort.qsort([]) == []
    end

    test "sorts single element list" do
      assert QuickSort.qsort([1]) == [1]
    end

    test "sorts two element list" do
      assert QuickSort.qsort([2, 1]) == [1, 2]
    end

    test "sorts list of integers" do
      unsorted = [4, 2, 7, 1, 3, 6, 5]
      assert QuickSort.qsort(unsorted) == [1, 2, 3, 4, 5, 6, 7]
    end

    test "sorts list with duplicate elements" do
      unsorted = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]
      assert QuickSort.qsort(unsorted) == [1, 1, 2, 3, 3, 4, 5, 5, 5, 6, 9]
    end

    test "sorts list of strings" do
      unsorted = ["banana", "apple", "cherry", "date"]
      assert QuickSort.qsort(unsorted) == ["apple", "banana", "cherry", "date"]
    end

    test "sorts list of atoms" do
      unsorted = [:banana, :apple, :cherry, :date]
      assert QuickSort.qsort(unsorted) == [:apple, :banana, :cherry, :date]
    end

    test "handles already sorted list" do
      sorted = [1, 2, 3, 4, 5]
      assert QuickSort.qsort(sorted) == sorted
    end

    test "handles reverse sorted list" do
      reversed = [5, 4, 3, 2, 1]
      assert QuickSort.qsort(reversed) == [1, 2, 3, 4, 5]
    end

    test "sorts negative numbers" do
      unsorted = [-3, -1, -4, -1, -5, -9]
      assert QuickSort.qsort(unsorted) == [-9, -5, -4, -3, -1, -1]
    end

    test "sorts mixed positive and negative numbers" do
      unsorted = [-3, 1, -4, 1, 5, -9]
      assert QuickSort.qsort(unsorted) == [-9, -4, -3, 1, 1, 5]
    end

    test "sorts large list" do
      large_list = Enum.shuffle(1..1000)
      assert QuickSort.qsort(large_list) == Enum.sort(large_list)
    end
  end
end