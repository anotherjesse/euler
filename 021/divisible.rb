# What is the smallest number that is evenly divisible by all of the numbers from 1 to 20?

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

def divisors(n)
  [1] + (2..Math.sqrt(n).to_i).collect do |m|
    [m, n/m] if n % m == 0
  end.flatten.compact.sort
end

$d = {}

def d(n)
  $d[n] ||= divisors(n).inject(0) { |a,b| a+b }
end

amicable = (2..10000).select { |n| n == d(d(n)) && n != d(n) }

puts amicable.inject(0) { |a,b| a+b }
