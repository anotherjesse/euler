class Array
  def sum
    inject(0) { |n,s| n+s }
  end
end

def sum_diff(max)
  ((1..max).to_a.sum ** 2) - (1..max).collect { |n| n**2 }.sum
end

puts sum_diff(100)
