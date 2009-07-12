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

class Array
  def hashify
    rval = Hash.new(0)
    each { |n| rval[n] += 1 }
    rval
  end
end

def divisible(max)
  factors = Hash.new(0)

  (2..max).each do |n|
    factor(n).hashify.each do |factor, exp|
      factors[factor] = [factors[factor], exp].max
    end
  end

  factors.collect { |factor, exp| factor ** exp }.inject(1) { |n, m| n*m }
end

p divisible(20)

