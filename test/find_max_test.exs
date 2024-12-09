defmodule FindMaxTest do
  use ExUnit.Case
  doctest FindMax

  describe "max/1" do
    test "finds maximum in list of positive integers" do
      assert FindMax.max([1, 2, 3, 4, 5]) == {:ok, 5}
    end

    test "finds maximum in list of negative integers" do
      assert FindMax.max([-5, -4, -3, -2, -1]) == {:ok, -1}
    end

    test "finds maximum in list with mixed positive and negative integers" do
      assert FindMax.max([-10, 0, 5, -3, 10, -7]) == {:ok, 10}
    end

    test "finds maximum in list with duplicate values" do
      assert FindMax.max([3, 1, 4, 4, 2, 3]) == {:ok, 4}
    end

    test "returns empty list for empty input" do
      assert FindMax.max([]) == []
    end

    test "finds maximum in single element list" do
      assert FindMax.max([42]) == {:ok, 42}
    end

    test "finds maximum in list with identical elements" do
      assert FindMax.max([5, 5, 5, 5]) == {:ok, 5}
    end

    test "finds maximum in list with floating point numbers" do
      assert FindMax.max([1.5, 2.7, -0.3, 4.2, 3.1]) == {:ok, 4.2}
    end
  end
end