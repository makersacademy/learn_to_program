class Integer
  def to_roman
    numerals = ''

    numerals << 'M' * (self / 1000)
    numerals << 'D' * (self % 1000 / 500)
    numerals << 'C' * (self % 500 / 100)
    numerals << 'L' * (self % 100 / 50)
    numerals << 'X' * (self % 50 / 10)
    numerals << 'V' * (self % 10 / 5)
    numerals << 'I' * (self %5 / 1)

    numerals 
  end
  
  def factorial
    "You can't take the factorial of a negative number!" if self < 0
    self <= 1 ? 1 : self * (self-1).factorial
  end
end
