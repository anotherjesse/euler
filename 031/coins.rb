$coin_values = [1, 2, 5, 10, 20, 50, 100, 200]

$ans = 0

def coinbox(current, current_coin_idx, change)
  if current_coin_idx == $coin_values.size
    $ans += 1 if current == 200
    return
  end

  # use the fact that if a coin divides all coins of great value
  # then it must evenly divide the change we need to make
  if [5,10,50,100,200].include? $coin_values[current_coin_idx]
    return unless (200 - current) % $coin_values[current_coin_idx] == 0
  end

  max_coins = (200 - current) / $coin_values[current_coin_idx]
  (0..max_coins).each do |coins|
    coinbox(current + ($coin_values[current_coin_idx] * coins), current_coin_idx + 1, change + [coins])
  end
end

coinbox(0, 0, [])

puts $ans
