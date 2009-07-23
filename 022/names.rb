names = open('names.txt').read.gsub('"', '').split(',').sort

def score(name)
  name.downcase!
  (0...name.size).collect { |idx| 1 + name[idx] - 'a'[0] }.inject(0) {|a,b|a+b}
end

scores = (1..names.size).collect do |n|
  score(names[n-1]) * n
end

puts scores.inject(0) { |a,b| a+b }
