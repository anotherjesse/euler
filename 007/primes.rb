class Primes
  def initialize
    @cache = [2]
    @cache_next_try = 3
  end

  def [](n)
    loop do
      break if @cache.size >= n
      more
    end
    @cache[n-1]
  end

  def more
    loop do
      result = test(@cache_next_try)
      @cache_next_try += 2
      break if result
    end
  end

  def test(num)
    @cache.each do |p|
      return false if num % p == 0
    end
    @cache << @cache_next_try
    return true
  end
end

primes = Primes.new
puts primes[10001]
