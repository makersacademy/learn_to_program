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
    num = self
    m = num/1000.to_i
    d = (num-m*1000)/500.to_i
    c = (num-m*1000-d*500)/100.to_i
    l = (num-m*1000-d*500-c*100)/50.to_i
    x = (num-m*1000-d*500-c*100-l*50)/10.to_i
    v = (num-m*1000-d*500-c*100-l*50-x*10)/5.to_i
    i = num-m*1000-d*500-c*100-l*50-x*10-v*5
    return "M"*m + "D"*d + "C"*c + "L"*l + "X"*x + "V"*v + "I"*i
  end
end
