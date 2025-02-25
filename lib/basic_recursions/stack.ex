defmodule Stack do
  # This function handles the base case where the input is 0.
  # It simply returns :ok.
  def print(0), do: :ok

  # This function prints the current number and then recursively
  # calls itself with the number decremented by 1.
  def print(n) do
    IO.puts(n)
    print(n - 1)
    # IO.puts(n)
  end
end
