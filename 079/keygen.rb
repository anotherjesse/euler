$codes = open('keylog.txt').read.split("\r\n").uniq.sort
digits = $codes.join.split('').uniq.sort

def code(word, digits)
  if digits.empty?
    $codes.each do |test|
      idx = test.split('').collect { |d| word.index(d) }
      return unless idx == idx.sort
    end
    puts word
  else
    digits.each do |d|
      code(word + d, digits - [d])
    end
  end
end

code('', digits)
