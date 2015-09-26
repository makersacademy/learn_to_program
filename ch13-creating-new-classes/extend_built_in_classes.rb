class Integer
  def factorial
    self == 0 ? 1 : (1..self).inject { |n, product| product * n }
  end
  
  def to_roman
    roman_to_arabic = {
      M: 1_000, D: 500, C: 100, L: 50,
      X: 10,    V: 5,   I: 1
    }

    return '' if self <= 0
    roman_to_arabic.each { |key, val| return key.to_s + (self - val).to_roman if self >= val }
  end
end
