puts (2..100).collect { |a| (2..100).collect { |b| (a**b).to_s.split('').inject(0) { |sum, n| sum + n.to_i } }}.flatten.max
