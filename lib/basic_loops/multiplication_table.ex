defmodule MultiplicationTable do
  def print_table(list) do
    print_rows(list, list)
  end

  defp print_rows([], _original), do: :ok

  defp print_rows([row_head | row_tail], original) do
    print_row(row_head, original)
    # Add a newline after each row
    IO.puts("")
    print_rows(row_tail, original)
  end

  defp print_row(_multiplier, []), do: :ok

  defp print_row(multiplier, [col_head | col_tail]) do
    IO.write("#{multiplier * col_head}\t")
    print_row(multiplier, col_tail)
  end
end
