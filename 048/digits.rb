class Array
  def sum
    inject(0) { |a,b| a+b }
  end
end

puts (1..1000).collect { |n| n**n }.sum.to_s[-10..-1]
