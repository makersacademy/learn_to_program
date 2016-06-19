class Integer

  def factorial
    if self <= 1
      1
    else
      self * (self - 1).factorial
    end
  end

  def to_roman
    answer = ""
    answer += "M" * (self / 1000)
    answer += "D" * ((self % 1000) / 500)
    answer += "C" * ((self % 500) / 100)
    answer += "L" * ((self % 100) / 50)
    answer += "X" * ((self % 50) / 10)
    answer += "V" * ((self % 10) / 5)
    answer += "I" * (self % 5)
    answer
  end
end