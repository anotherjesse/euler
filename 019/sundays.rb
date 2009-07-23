require 'date'
$ans = 0

(1901..2000).each do |y|
  (1..12).each do |m|
    $ans += 1 if Date.civil(y,m,1).wday == 0
  end
end

puts $ans
