defmodule FindMax do
  @moduledoc """
  A module for finding the maximum value in a list.
  """

  @doc """
  Finds the maximum value in a list.

  ## Examples

      iex> FindMax.max([1, 2, 3, 4, 5])
      {:ok, 5}

      iex> FindMax.max([])
      []

  """
  @spec max([number]) :: {:ok, number} | []
  def max([]), do: []

  def max(list) do
    find_max(list)
  end

  @spec find_max([number]) :: {:ok, number}
  defp find_max([head | tail]) do
    find_max(tail, head)
  end

  @spec find_max([number], number) :: {:ok, number}
  defp find_max([], max), do: {:ok, max}

  defp find_max([head | tail], max) when max < head do
    find_max(tail, head)
  end

  defp find_max([_head | tail], max) do
    find_max(tail, max)
  end
end
