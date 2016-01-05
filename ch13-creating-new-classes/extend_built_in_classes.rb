class Integer
  
  def factorial
    self <= 1 ? 1 : self * (self - 1).factorial
  end
  
  def to_roman 
    x = self.to_s.reverse
    i = 0
    roman = Array.new
    x.each_char {|y|
      y = y.to_i
      if i == 0
        if y < 5
          roman[i] = "I"*y
        else
          roman[i] = "V"+"I"*(y-5)
        end
      end
      if i ==1
        if y < 5
          roman[i] = "X"*y
        else
          roman[i] = "L"+"X"*(y-5)
        end
      end
      if i == 2
        if y < 5
          roman[i] = "C"*y
        else
          roman[i] = "D"+"C"*(y-5)
        end    
      end
      if i == 3
        roman[i] = "M"*y
      end
      i += 1
    }
    return roman.reverse.join('')
  end
end