puts ((1..100).inject(1) { |a,b| a*b }).to_s.split('').collect { |n| n.to_i }.inject(0) { |a,b| a+b }
