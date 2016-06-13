class Integer
    
  def factorial num=self
    if num < 0
      return 'You can\'t take the factorial of a negative number!'
    end
    if num <= 1
      1
    else
      num * factorial(num-1)
    end
  end
    
  def to_roman
    str = ''
    str << 'M' * (self / 1000)
    str << 'D' * (self % 1000 / 500)
    str << 'C' * (self % 500 / 100)
    str << 'L' * (self % 100 / 50)
    str << 'X' * (self % 50 / 10)
    str << 'V' * (self % 10 / 5)
    str << 'I' * (self % 5 / 1)
  end
  
end