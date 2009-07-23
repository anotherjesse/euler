$words = {
  1 => 'one',
  2 => 'two',
  3 => 'three',
  4 => 'four',
  5 => 'five',
  6 => 'six',
  7 => 'seven',
  8 => 'eight',
  9 => 'nine',
  10 => 'ten',
  11 => 'eleven',
  12 => 'twelve',
  13 => 'thirteen',
  14 => 'fourteen',
  15 => 'fifteen',
  16 => 'sixteen',
  17 => 'seventeen',
  18 => 'eighteen',
  19 => 'nineteen',
  20 => 'twenty',
  30 => 'thirty',
  40 => 'forty',
  50 => 'fifty',
  60 => 'sixty',
  70 => 'seventy',
  80 => 'eighty',
  90 => 'ninety',
  100 => 'hundred',
  1000 => 'one thousand'
}

$words[1] = 'one'


def english(num)
  raise "I'm not smart enough for a number that big" if num > 9999

  return nil if num == 0

  return $words[1000] if num == 1000

  if num >= 100
    return [$words[num/100] + ' ' + $words[100], english(num%100)].compact.join(' and ')
  end

  return $words[num] if num < 21

  return [$words[num - (num % 10)], english(num%10)].compact.join('-')
end

ans = (1..1000).collect do |n|
  english(n)
end

puts ans.join().gsub(/\W/, '').size
