defmodule Euler2 do
  def fib(n) do
    fib(n,[2,1])
  end

  def fib(n, lst) do
    [f1, f2 | _ ] = lst

    if f1 + f2 <= n do
      fib(n, [f1 + f2 | lst])
    else
      lst
    end
  end
end

Euler2.fib(4000000)
|> Enum.filter(&(rem(&1, 2) == 0))
|> Enum.sum
|> IO.puts
