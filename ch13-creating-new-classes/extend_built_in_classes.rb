class Integer
  def factorial
    self == 0 ? 1 : self * factorial(self - 1)
  end
  def to_roman
    'M' * (self/1000) + 'D' * (self % 1000 / 500) + 'C' * (self % 500 / 100) + 'L' * (self % 100 / 50) + 'X' * (self % 50 / 10) + 'V' * (self % 10 / 5) + 'I' * (self % 5)
  end
end