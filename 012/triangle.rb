def factors(n)
  2 * (1..Math.sqrt(n).to_i).select { |f| n % f == 0 }.size
end

triangle_number = 1
adder = 2
loop do
  triangle_number += adder
  adder += 1
  if factors(triangle_number) > 500
    puts triangle_number
    exit
  end
end
