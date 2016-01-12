class Integer
  def factorial
    if self < 0
      return 'You can\'t take the factorial of a negative selfber!'
    end
    
    if self <= 1
      1
    else
      self * (self - 1).factorial
    end
  end

  def to_roman
    m = 'M' * (self / 1000)
    d = 'D' * (self % 1000 / 500)
    c = 'C' * (self % 500 / 100)
    l = 'L' * (self % 100 / 50)
    x = 'X' * (self % 50 / 10)
    v = 'V' * (self % 10 / 5)
    i = 'I' * (self % 5 / 1)

    "#{m}#{d}#{c}#{l}#{x}#{v}#{i}"
  end
end