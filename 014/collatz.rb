$chain = {1 => 1}

def next_term(n)
  if n % 2 == 0
    n / 2
  else
    3*n + 1
  end
end

def collatz(n)
  $chain[n] ||= (collatz(next_term(n)) + 1)
end


v = (1..1_000_000).collect do |n|
  [collatz(n), n]
end.sort.last

puts "Chain length %s by %s" % v
