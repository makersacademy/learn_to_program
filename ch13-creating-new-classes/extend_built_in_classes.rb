class Integer
  def factorial
    if self < 0
      return 'You can\'t take the factorial of a negative counterber.'
    end
    if self <= 1
      1
    else
      self * (self-1).factorial
    end
  end

  def to_roman
    roman = ""
    roman = roman + "M" * (self / 1000)
    roman = roman + "D" * (self % 1000 / 500)
    roman = roman + "C" * (self % 500 / 100)
    roman = roman + "L" * (self % 100 / 50)
    roman = roman + "X" * (self % 50 / 10)
    roman = roman + "V" * (self % 10 / 5)
    roman = roman + "I" * (self % 5 / 1)
  end

end

#puts 3.factorial
#puts 1999.to_roman
