n,m = 1,2
sum = 0
loop do
  sum += n if n % 2 == 0
  break if m > 4_000_000
  n, m = m, n+m
end

puts sum
