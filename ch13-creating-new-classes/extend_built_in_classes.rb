class Integer

  def factorial
    if self <= 1
       1
    else
      self * (self-1).factorial
    end
  end
end
###########

class Integer
def to_roman 

  number1 = "M" * (self/1000)
  number2 = number1 + "D" * (self % 1000 / 500)
  number3 = number2 + "C" * (self % 500 /  100)
  number4 = number3 + "L" * (self % 100/    50)
  number5 = number4 + "X" * (self % 50/     10)
  number6 = number5 + "V" * (self %10/       5)
  number7 = number6 + "I" * (self %5/        1)

number7

  end
end
