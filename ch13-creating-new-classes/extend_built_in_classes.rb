class Array
  def shuffle
    sort_by{rand}
  end
end
class Integer
  def factorial
    if self < 0
      return 'You can\' take the factorial of a negative number!'
    end
    self <= 1 ? 1 : self * (self - 1).factorial
  end

  def to_roman
    output = ''

    output += 'M' * (self / 1000)
    output += 'D' * (self % 1000 / 500)
    output += 'C' * (self % 500 / 100)
    output += 'L' * (self % 100 / 50)
    output += 'X' * (self % 50 / 10)
    output += 'V' * (self % 10 / 5)
    output += 'I' * (self % 5 / 1)

    output
  end
end
