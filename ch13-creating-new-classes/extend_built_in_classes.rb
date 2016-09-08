class Integer
  def factorial
    if self < 0
      return "You can\'t take the factorial of a negative number!"
    end
    if self <= 1
      1
    else
      self * (self-1).factorial
    end
  end

  def to_roman
    rn = ""
    num = self
      if num >= 1000
        rn = "M" * (num/1000).to_i
        num = num - ((num / 1000).to_i * 1000)
      end
      if num >= 500
        rn = rn + "D"
        num = num - 500
      end
      if num >= 100
        rn = rn + ("C" * (num/100).to_i)
        num = num - ((num / 100).to_i * 100)
      end
      if num >= 50
        rn = rn + "L"
        num = num - 50
      end
      if num >= 10
        rn = rn + ("X" * (num/10).to_i)
        num = num - ((num / 10).to_i * 10)
      end
      if num >= 5
        rn = rn + "V"
        num = num - 5
      end
      if num > 0
        rn = rn + ("I" * num)
      end
    return rn
  end
end
