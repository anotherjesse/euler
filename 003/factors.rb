n = 600851475143

def factor(n)
  factors = []
  m = 2

  loop do
    break if n == 1

    if n % m == 0
      factors << m
      n /= m
    else
      m += 1
    end
  end

  return factors
end

puts factor(n).max

