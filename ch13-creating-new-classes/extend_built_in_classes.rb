class Integer
  def factorial
    return "Not positive integer!" if self < 1
    factorial = self
    for n in 1...self
      factorial *= n
    end
    return factorial
  end

  def to_roman
    return "Not positive integer!" if self <= 0
    roman = ""
    roman += "M" * (self / 1000)
    roman += "D" * (self % 1000 / 500)
    roman += "C" * (self % 500 / 100)
    roman += "L" * (self % 100 / 50)
    roman += "X" * (self % 50 / 10)
    roman += "V" * (self % 10 / 5)
    roman += "I" * (self % 5)
    return roman
  end
end
