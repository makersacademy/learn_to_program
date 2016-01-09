class Integer

  def factorial
    if self < 0
      return 'You can\'t take the factorial of a negative number!'
    end

    if self <= 1
      1
    else
      return self * (self-1).factorial
    end
  end

  def to_roman
      remaining = self
      result = ""

      result += "M" * (self / 1000)
      result += "D" * (self % 1000 / 500)
      result += "C" * (self % 500 / 100)
      result += "L" * (self % 100 / 50)
      result += "X" * (self % 50 / 10)
      result += "V" * (self % 10 / 5)
      result += "I" * (self % 5 / 1)

    result
  end

end
