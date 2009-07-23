$triangle = [1]
def triangle?(n)
  while n > $triangle.last
    v = $triangle.size + 1
    $triangle << v*(v+1)/2
  end
  $triangle.include? n
end

def score(word)
  word.downcase!
  (0...word.size).collect { |i| 1 + word[i] - 'a'[0] }.inject(0) {|a,b|a+b}
end

words = open('words.txt').read.gsub('"', '').split(',')

puts words.select { |word| triangle?(score(word)) }.size


