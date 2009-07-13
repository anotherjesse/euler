(2 ** 1000).to_s.split('').collect { |n| n.to_i }.inject(0) { |a,b| a+b }
