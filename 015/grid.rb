$grid = {}

$grid[[0,0]] = 1

def grid(x,y)
  return 0 if x < 0 || y < 0
  $grid[[x,y]] ||= grid(x-1,y) + grid(x,y-1)
end

(0..10).each do |x|
  (0..10).each do |y|
    grid(x,y)
  end
end

puts grid(20,20)
