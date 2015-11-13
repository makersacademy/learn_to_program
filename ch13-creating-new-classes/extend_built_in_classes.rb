class Array

  def shuffleify
    remaining = self.length
    returned = []
    until remaining == 0
      count = rand(remaining)
      returned.push(self[count])
      remaining -= 1
      self[count] = self[remaining]
      self.pop
    end
    returned
  end

end

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

end

p 4.factorial
