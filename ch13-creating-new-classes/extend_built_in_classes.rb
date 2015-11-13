class Array

  def shuffleify
    remaining = self.length
    returned = []
    until remaining == 0
      count = rand(remaining)
      returned.push(self[count])
      remaining -= 1
      self[count] = self[remaining]
      self.pop
    end
    returned
  end

end

class Integer

  def factorial
    if self < 0
      return "You can't take the factorial of a negative selfber!"
    end

    if self <= 1
      1
    else
      self * (self-1).factorial
    end
  end

  def to_roman
    value = self
    many_thousands = value / 1000
    value -= many_thousands * 1000

    many_fundreds = value / 500
    value -= many_fundreds * 500

    many_hundreds = value / 100
    value -= many_hundreds * 100

    many_fifties = value / 50
    value -= many_fifties * 50

    many_tens = value / 10
    value -= many_tens * 10

    many_fives = value / 5
    value -= many_fives * 5

    "#{"M" * many_thousands}#{"D" * many_fundreds}#{"C" * many_hundreds}#{"L" * many_fifties}#{"X" * many_tens}#{"V" * many_fives}#{"I" * value}"
  end

end
