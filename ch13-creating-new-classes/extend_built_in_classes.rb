class Integer
  def factorial
    if self < 0
      return "You can't take the factorial of a negative number!"
    end
    if self <= 1
      1
    else
      self * (self-1).factorial
    end
  end

  def to_roman
    new_roman = ""

    thousands = self / 1000
    hundreds = self % 1000 / 100
    tens = self % 100 / 10
    ones = self % 10

    new_roman = "M" * thousands

    if hundreds == 9
      new_roman = new_roman + "CM"
    elsif hundreds == 4
      new_roman = new_roman + "CD"
    else
      new_roman = new_roman + "D" * (self % 1000 / 500)
      new_roman = new_roman + "C" * (self % 500 / 100)
    end

    if tens == 9
      new_roman = new_roman + "XC"
    elsif tens == 4
      new_roman = new_roman + "XL"
    else
      new_roman = new_roman + "L" * (self % 100 / 50)
      new_roman = new_roman + "X" * (self % 50 / 10)
    end

    if ones == 9
      new_roman = new_roman + "IX"
    elsif ones == 4
      new_roman = new_roman + "IV"
    else
      new_roman = new_roman + "V" * (self % 10 / 5)
      new_roman = new_roman + "I" * (self % 5)
    end
      new_roman
  end
end


class Array
  def shuffle
    shuffled = []
    if self.length == 0
      return self
    else
      while self.length > 0
        n = rand(self.length)
        shuffled << self[n]
        self.delete_at(n)
      end
    end
      shuffled
  end
end