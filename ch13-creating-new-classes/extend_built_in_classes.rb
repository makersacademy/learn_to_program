class Integer
  
  def factorial
    if self < 0
      return 'You can\'t take the factorial of a negative number!'
    end
    if self <= 1
      1
    else
      self * (self-1).factorial
    end
  end



def to_roman

  number = self

  one_nums = {1000 => "M",
      500 => "D",
      100 => "C",
      50 => "L",
      10 => "X",
      5 => "V",
      1 => "I"
      }
  to_return = ""
  one_nums.each do |k, v|
      to_return << v * (number / k) 
      number = (number % k)
  end
p to_return

end

end