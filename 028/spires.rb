size = 1
sum = 1

while size < 1001
  sum += 4 * size * size + (size + 1) * (1 + 2 + 3 + 4)
  size += 2
end

puts sum
