class Integer
  # your code here
  def factorial
    self <=1 ? 1 : self * (self-1).factorial
  end

  def to_roman

    raise 'Must use positive integer' if self <= 0
    roman = ''
    roman = roman + 'M' * (self / 1000)
    roman = roman + 'D' * (self % 1000 / 500)
    roman = roman + 'C' * (self % 500 / 100)
    roman = roman + 'L' * (self % 100 / 50)
    roman = roman + 'X' * (self % 50 / 10)
    roman = roman + 'V' * (self % 10 / 5)
    roman = roman + 'I' * (self % 5 / 1)
    roman
  end
end
