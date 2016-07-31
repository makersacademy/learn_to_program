class Array
  def shuffle

      shuffled_arr = []

      while self.length > 0
        item = self.sample
        shuffled_arr << item
        self.delete(item)
      end

      return shuffled_arr
  end
end

class Integer
  def factorial
    total = 1
    factor = self
    raise "Please enter a positive integer" if self < 0
    return 1 if self == 0
    while factor > 0
      total *= factor
      factor -= 1
    end
    return total
  end


  def to_roman

      raise 'Please enter a positive integer' if self <= 0
      raise 'Please enter a positive integer less than 4000' if self >= 4000

      roman = ""

      roman << "M" * (self / 1000)

      if self % 1000 / 100 == 9
        roman << "CM"
      elsif self % 1000 / 100 == 4
        roman << "CD"
      else
      roman << "D" * (self % 1000 / 500)
      roman << "C" * (self % 500 / 100)
      end

      if self % 100 / 10 == 9
        roman << "XC"
      elsif self % 100 / 10 == 4
        roman << "XL"
      else
      roman << "L" * (self % 100 / 50)
      roman << "X" * (self % 50 / 10)
      end

      if self % 10 == 9
        roman << "IX"
      elsif self % 10 == 4
        roman << "IV"
      else
      roman << "V" * (self % 10 / 5)
      roman << "I" * (self % 5)
      end

      return roman
    end

  end
