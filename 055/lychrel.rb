$palindromic = {}

def palindrome?(n)
  n == reverse(n)
end

def reverse(n)
  n.to_s.reverse.to_i
end


def lychrel(n, d=0)
  $palindromic[n] ||= n+reverse(n) if palindrome?(n+reverse(n))
  return $palindromic[n] if $palindromic[n]
  return false if d > 50
  $palindromic[n] ||= lychrel(n + reverse(n), d+1)
end

(1..10010).each { |n| lychrel(n) }

raise "test error" unless lychrel(349)
raise "test error" unless lychrel(47)
raise "test error" if     lychrel(196)

puts $palindromic.select { |k,v| k < 10000 && !v }.size
