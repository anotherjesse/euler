$total = 0

def naive(head, tail)
  if tail.empty?
    $total += 1
    if $total == 1_000_000
      puts head.join('')
      exit(0)
    end
  end
  tail.each do |n|
    naive head + [n], tail - [n]
  end
end

def factorial(n)
  (1..n).inject(1) { |a,b| a*b }
end

def permute(head, tail)
  if tail.empty?
    $total += 1
    if $total == 1_000_000
      puts head.join('')
      exit(0)
    end
  end

  if $total + factorial(tail.size) < 1_000_000
    $total += factorial(tail.size)
    return
  else
    tail.each do |n|
      permute head + [n], tail - [n]
    end
  end
end

permute [], (0..9).to_a
