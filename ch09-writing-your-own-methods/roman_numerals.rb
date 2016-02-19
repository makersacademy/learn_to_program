def roman_numeral num
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
  return roman_num << "IX" if num == 9
  if num.between?(6,9)
    roman_num << "V"
    roman_num << "I" * (num - 5)
  end
  if num.between?(1,6)
    return roman_num << "V" if num == 5
    return roman_num << "IV" if num == 4
    if num >= 3
      roman_num << "I" * num
    end
  end
  roman_num
end
