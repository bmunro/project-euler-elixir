multiples = for n <- 1..99, rem(n, 3) == 0 or rem(n, 5) == 0, do: n
IO.puts Enum.reduce(multiples, 0, &(&1 + &2))
