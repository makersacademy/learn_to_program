class Integer
  def factorial
    if self < 0
      return 'You can\'t take the factorial of a negative number!'
    end
    if self <= 1
      return 1
    else
      self * factorial(self-1)
    end
end


class Array
  def shuffle
    self.sort_by{rand}
  end
end
