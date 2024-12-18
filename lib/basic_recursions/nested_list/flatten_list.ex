defmodule Flatten do
  def flatten([]), do: []

  def flatten([head | tail]), do: flatten(head) ++ flatten(tail)

  def flatten(head), do: [head]
end
