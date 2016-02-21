class Integer
  def factorial
      old_self = self
      new_self = self - 1
      while new_self > 0
          factorial = old_self * new_self
          old_self = factorial
          new_self -= 1
      end
  factorial
  end

  def to_roman
    num = self
    roman_num = ""
    if num >= 1000
      roman_num << "M" * (num/1000)
      num = num % 1000
    end
    if num >= 500
      roman_num << "D"
      num = num % 500
    end
    if num >= 100
      roman_num << "C" * (num/100)
      num = num % 100
    end
    if num >= 50
      roman_num << "L"
      num = num % 50
    end
    if num >= 10
      roman_num << "X" * (num/10)
      num = num % 10
    end
    if num >= 5
      roman_num << "V"
      num = num % 5
    end
    if num >= 1
      roman_num << "I" * num
      num = num % 1
    end
    roman_num
  end
end
