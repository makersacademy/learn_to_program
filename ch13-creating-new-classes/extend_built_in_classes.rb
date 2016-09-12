class Integer

  def to_roman
    x = ""
    x = x + "M" * (self / 1000)
    x = x + "D" * (self % 1000 / 500)
    x = x + "C" * (self % 500 / 100)
    x = x + "L" * (self % 100 / 50)
    x = x + "X" * (self % 50 / 10)
    x = x + "V" * (self % 10 / 5)
    x = x + "I" * (self % 5 / 1)
    x
  end

  def factorial
    if self <= 1
      1
    else
      self * (self-1).factorial
    end
  end

end
