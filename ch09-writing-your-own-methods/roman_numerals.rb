def roman_numeral num
  roman_num = ""
  c = (num % 1000 / 100)
  x = (num % 100 / 10)
  i = (num % 10)

  roman_num << "M" if num >= 1000

  if c == 9
    roman_num << "CM"
  elsif c == 4
    roman_num << "CD"
  else
    roman_num << "D" * (num % 1000 / 500)
    roman_num << "C" * (num % 500 / 100)
  end

  if x == 9
    roman_num << "XC"
  elsif x == 4
    roman_num << "XL"
  else
    roman_num << "L" * (num % 100 / 50)
    roman_num << "X" * (num % 50 / 10)
  end

  if i == 9
    roman_num << "IX"
  elsif i == 4
    roman_num << "IV"
  else
    roman_num << "V" * (num % 10 / 5)
    roman_num << "I" * (num % 5)
  end
  roman_num
end
