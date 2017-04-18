class Integer
  def shuffle
    self.sort_by{rand}
  end

  def factorial
    self == 1 ? 1 : self * (self-1).factorial
  end

  def to_roman
    roman = ""
    roman << "M" * (self / 1000)
    roman << "D" * (self % 1000 / 500)
    roman << "C" * (self % 500 / 100)
    roman << "L" * (self % 100 / 50)
    roman << "X" * (self % 50 / 10)
    roman << "V" * (self % 10 / 5)
    roman << "I" * (self % 5 / 1)
  end

end
