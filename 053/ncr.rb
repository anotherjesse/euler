$factorial = {0 => 1}

(1..100).inject(1) { |a,b| $factorial[b] = a*b }

# nCr = n! / (r! * (n-r)!)

nCrs = (1..100).collect do |n|
  (1..n).collect do |r|
    $factorial[n] / ($factorial[r] * $factorial[n-r]) > 1_000_000
  end
end.flatten.select {|n| n}

puts nCrs.size
