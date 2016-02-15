def roman_numeral num
  str = ""
  while num > 0
    if num >= 1000
      str << "M"*(num / 1000)
      num = num % 1000
    elsif num >= 500
      if num >= 900
        str << "CM"*(num / 900)
        num = num % 900
      else
        str << "D"*(num / 500)
        num = num % 500
      end
    elsif num >= 100
      if num >= 400
        str << "CD"*(num / 400)
        num = num % 400
      else
        str << "C"*(num / 100)
        num = num % 100
      end
    elsif num >= 50
      if num >= 90
        str << "XC"*(num / 90)
        num = num % 90
      else
        str << "L"*(num / 50)
        num = num % 50
      end
    elsif num >= 10
      if num >= 40
        str << "XL"*(num / 40)
        num = num % 40
      else
        str << "X"*(num / 10)
        num = num % 10
      end
    elsif num >= 5
      if num == 9
        str << "IX"*(num / 9)
        num = num % 9
      else
        str << "V"*(num / 5)
        num = num % 5
      end
    else
      if num == 4
        str << "IV"*(num / 4)
        num = num % 4
      else
        str << "I"*(num / 1)
        num = 0
      end
    end
  end
  str
end
