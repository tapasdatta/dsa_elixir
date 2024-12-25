defmodule Stack do
  def print(0), do: :ok

  def print(n) do
    IO.puts(n)
    print(n - 1)
    # IO.puts(n)
  end
end
