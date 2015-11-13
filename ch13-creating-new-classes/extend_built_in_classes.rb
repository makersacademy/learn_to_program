class Array
  def shuffle
    new_arr = []
    until self.empty?
      pick = self[rand(self.length)]
      new_arr << pick
      self.delete(pick)
    end
    new_arr
  end
end

class Integer
  def factorial
    if self == 1
      return 1
    else
      self * (self-1).factorial
    end
  end
  
  def to_roman
    roman = String.new
    roman << "M" * (self / 1000)
    roman << "D" * (self % 1000 / 500)
    roman << "C" * (self % 500 / 100)
    roman << "L" * (self % 100 / 50)
    roman << "X" * (self % 50 / 10)
    roman << "V" * (self % 10 / 5)
    roman << "I" * (self % 5 / 1)
    roman
  end 
end