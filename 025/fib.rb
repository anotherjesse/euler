fibs = [1,1]

while fibs.last.to_s.size < 1000
  fibs << fibs[-2] + fibs[-1]
end

puts fibs.size
