puts (1...1000).select { |n| n % 3 == 0 || n % 5 == 0 }.inject(0) { |s, n| n+s }
