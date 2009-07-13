
(1..333).each do |a|
  (a..(1000-a)/2).each do |b|
    c = 1000 - (a+b)
    p a*b*c if (a**2) + (b**2) == c**2
  end
end
