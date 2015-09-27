class Integer
  def factorial
    if self < 0
      return 0
    end
    if self <= 1
      1
    else
      self * (self-1).factorial
    end
  end


  def to_roman

    num = self

    numeral={
      1000 => "M",
      500 => "D",
      100 => "C",
      50 => "L",
      10 => "X",
      5 => "V",
      1 => "I"
    }
    result=""
    numeral.each do |key,value|
      times = num/key
      rem = num%key
      if times > 0
        section = value*times
        result += section
      end
      num = rem
    end
    result
  end

end

# p 3.factorial
# p 1963.to_roman