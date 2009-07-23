def naive
  def factorial(num)
    (1..num).inject(1) {|a,b|a*b}
  end

  def curious?(num)
    digits = num.to_s.split('')
    digits.collect { |n| factorial(n.to_i) }.inject(0) {|a,b|a+b} == num
  end

  n=1

  loop do
    puts n if curious?(n)
    n+=1
  end
end

$factorial = [1]
1.upto(9) do |n|
  $factorial << $factorial.last * n
end

def curious?(digits, sum)
  return if digits.size > 5
  puts sum if digits.join('') == sum.to_s

  (0..9).each do |n|
    curious?(digits + [n], sum+$factorial[n])
  end
end

curious?([], 0)
