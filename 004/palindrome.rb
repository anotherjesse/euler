def divisible(n)
  999.downto(100) do |m|
    return true if (n % m == 0) && (n / m > 100) && (n / m < 1000)
  end

  return false
end

# pattern for palendromes to test is abccba

9.downto(0) do |a|
  9.downto(0) do |b|
    9.downto(0) do |c|
      n = a*100000 + b*10000 + c * 1000 + c * 100 + b * 10 + a
      if divisible(n)
        puts n
        exit
      end
    end
  end
end
