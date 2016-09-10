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
    
    old_roman = ""

    old_roman = old_roman + "M" * (self / 1000)
    old_roman = old_roman + "D" * (self % 1000 / 500)
    old_roman = old_roman + "C" * (self % 500 / 100)
    old_roman = old_roman + "L" * (self % 100 / 50)
    old_roman = old_roman + "X" * (self % 50 / 10)
    old_roman = old_roman + "V" * (self % 10 / 5)
    old_roman = old_roman + "I" * (self % 5 / 1)

    old_roman
  
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