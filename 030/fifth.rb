$ans = []

(0..3).each do |a|
  (0..9).each do |b|
    (0..9).each do |c|
      (0..9).each do |d|
        (0..9).each do |e|
          (0..9).each do |f|
            n = [a,b,c,d,e,f].to_s.to_i
            $ans << n if n == a**5 + b**5 + c**5 + d**5 + e**5 + f**5 && n > 1
          end
        end
      end
    end
  end
end

puts $ans.inject(0) { |a,b| a+b }
