def roman_numeral num
  roman = ""
  roman = roman + "M" * (num / 1000)
  num = num%1000
  if num >= 900
     roman = roman + "CM"
     num = num - 900
  end
  roman = roman + "D" * (num / 500)
  num = num%500
  if num >= 400
     roman = roman + "CD"
     num = num - 400
  end
  roman = roman + "C" * (num / 100)
  num = num%100
  if num >= 90
     roman = roman + "XC"
     num = num - 90
  end
  roman = roman + "L" * (num / 50)
  num = num%50
  if num >= 40
     roman = roman + "XL"
     num = num - 40
  end
  roman = roman + "X" * (num / 10)
  num = num%10
  if num >= 9
     roman = roman + "IX"
     num = num - 9
  end
  roman = roman + "V" * (num / 5)
  num = num%5
  if num >= 4
     roman = roman + "IV"
     num = num - 4
  end
  roman = roman + "I" * num
end
