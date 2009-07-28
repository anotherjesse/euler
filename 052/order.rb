x = 1

def digits(n, mult)
  n.to_s.split('').sort == (mult*n).to_s.split('').sort
end

loop do
  break if digits(x,2) && digits(x,3) && digits(x,4) && digits(x,5) && digits(x,6)
  x += 1
end

puts x
