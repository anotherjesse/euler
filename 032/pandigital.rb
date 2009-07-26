class Fixnum
  def prepend(n)
    if self == 0
      n
    else
      self + n * (10 ** self.to_s.size)
    end
  end
end

$pandigitals = {}

def pandigital(n1, n2, digits)
  # p [n1, n2] if digits.size == 5
  #  p [n1, n2, product] if digits.empty?

  if n1 > 0 && n2 > 0
    product = n1 * n2

    return unless digits.include?(product % 10)
    return if product.to_s.size > digits.size
    prod_digits = product.to_s.split('').collect { |d| d.to_i }.sort
    $pandigitals[product] = true if prod_digits == digits
  end

  digits.each do |n|
    pandigital(n1.prepend(n), n2, digits - [n]) if n1 == 0 || (n2 > 0)
    pandigital(n1, n2.prepend(n), digits - [n]) if n1 > 0
  end
end

pandigital(0, 0, [1,2,3,4,5,6,7,8,9])

p $pandigitals.keys.inject(0) { |a,b| a+b }
