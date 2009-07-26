$coin_values = [1, 2, 5, 10, 20, 50, 100, 200]

$ans = 0

def coinbox(current, current_coin_idx, change)
  return if current > 200
  if current_coin_idx == $coin_values.size
    if current == 200
      $ans += 1
    end
    return
  end
  max_coins = (200 - current) / $coin_values[current_coin_idx]
  (0..max_coins).each do |coins|
    coinbox(current + ($coin_values[current_coin_idx] * coins), current_coin_idx + 1, change + [coins])
  end
end

coinbox(0, 0, [])

puts $ans
