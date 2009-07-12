n = 600851475143

factors = []
factor = 2

loop do
  break if n == 1

  if n % factor == 0
    factors << factor
    n /= factor
  else
    factor += 1
  end
end

puts factors.max

