class Integer
  def factorial
    if self < 0
      return 'Cannot take the factorial of a negative number.'
    elsif self <= 1
      1
    else
      self * (self - 1).factorial
    end
  end

  def to_roman
    if self <= 0
      return "Cannot calculate the roman numeral for zero or negative numbers."
    end

    numeral_str = ""
    num = self
    divisor = 1000
    numerals_hash = {1=>"I", 5=>"V", 10=>"X", 50=>"L", 100=>"C", 500=>"D", 1000=>"M"}

    while num > 0
      current = num / divisor
      num = num % divisor
      if current > 0
        if current >= 5 && divisor != 1000
          numeral_str << numerals_hash[5 * divisor]
          current -= 5
        end
        numeral_str << numerals_hash[divisor] * current unless current == 0
      end
      divisor = divisor / 10
    end

    numeral_str
  end
end
