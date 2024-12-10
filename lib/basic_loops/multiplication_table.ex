defmodule MultiplicationTable do
  # [1, 2]
  # output: [1, 2], [2, 2]
  # input:
  def multiplication(list) do
    {multiplication} = do_multiplication(tail, head, [])
    IO.inspect(multiplication, label: "#{head}")
  end

  defp do_mulplication([], )

  defp do_multiplication([head | tail], number, math) do
    # number * head
    do_multiplication(tail, number, [number * head | math])
  end
end
