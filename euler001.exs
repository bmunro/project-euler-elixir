defmodule Euler1 do
  def sum(_, _, n) when n == 0 do
    n
  end

  def sum(a, b, n) do
    if rem(n, a) == 0 or rem(n, b) == 0 do
      n + sum(a, b, n-1)
    else 
      sum(a, b, n - 1)
    end
  end

end

IO.puts "Less than 10:  #{Euler1.sum(3,5,9)}"
IO.puts "Less than 1000: #{Euler1.sum(3,5,999)}"
