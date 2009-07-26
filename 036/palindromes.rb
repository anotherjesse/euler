dromes = (1..1_000_000).select do |n|
  n.to_s == n.to_s.reverse && n.to_s(2) == n.to_s(2).reverse
end

p dromes
puts dromes.inject(0) {|a,b| a+b}
