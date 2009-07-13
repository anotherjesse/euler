class Array
  def sum
    inject(0) { |n,s| n + s }
  end
end

def prime?(n)
  return false if n % 3 == 0

  r = Math.sqrt(n).to_i
  f = 5

  loop do
    break if f > r
    return false if n % f == 0
    return false if n % (f + 2) == 0
    f += 6
  end

  return true
end

primes = [2,3,5,7]

n = 11
loop do
  break if n > 2_000_000
  primes << n if prime?(n)
  n += 2
end

p primes.sum
