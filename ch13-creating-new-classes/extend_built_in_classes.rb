class Integer
  def factorial
    ans = 1
    (1..self).each {|val| ans *= val}
    ans
  end

  def old_roman_numeral_part number, order
    roman_hsh = {1 => "I", 5 => "V", 10 => "X", 50 => "L", 100 => "C", 500 => "D", 1000 => "M"}
    roman = ''
    mid = order * 5

    remainder = roman_hsh[order] * (number % mid / order)
    roman << (number >= mid ? roman_hsh[mid] : "") + remainder
  end

  def to_roman
    number = self
    order = 1000
    roman = ''
    while number > 0
      roman << self.old_roman_numeral_part(number, order)
      number  %= order
      order   /= 10
    end
    roman
  end
end
