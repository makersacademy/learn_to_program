class Integer


  def shuffle arr
    arr.shuffle
  end

 def factorial
    unless self <= 1
    self * (self-1).factorial
    else
      1
    end
  end

 def to_roman
    result = ''
    result += 'M' * (self / 1000)
    result += 'D' * (self % 1000 / 500)
    result += 'C' * (self % 500 / 100)
    result += 'L' * (self % 100 / 50)
    result += 'X' * (self % 50 / 10)
    result += 'V' * (self % 10 / 5)
    result += 'I' * (self % 5 /1)
    result
 end

end