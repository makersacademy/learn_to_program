class Integer
  def factorial
    return "You can't take the factorial of a negative number!" if self < 0
    self <= 1 ? 1 : self * (self-1).factorial
  end

  def to_roman
    numeral = ""
    (self / 1000).times {numeral << "M"}
    (self % 1000 / 500).times {numeral << "D"}
    (self % 500 / 100).times {numeral << "C"}
    (self % 100 / 50).times {numeral << "L"}
    (self % 50 / 10).times {numeral << "X"}
    (self % 10 / 5).times {numeral << "V"}
    (self % 5 / 1).times {numeral << "I"}
    numeral
  end
end