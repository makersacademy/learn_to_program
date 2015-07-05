def roman_numeral num
    roman_num = ""
  thous = num / 1000
  roman_num += "M" * thous
  rem = num % 1000

  if rem / 900 > 0
    roman_num += "CM"
    rem = rem % 900
  else
    five_hund = rem / 500
    roman_num += "D" * five_hund
    rem = rem % 500
  end

  hund = rem / 100
  if hund == 4
    roman_num += "CD"
  else
    roman_num += "C" * hund
  end
  rem = rem % 100

  if rem / 90 > 0
    roman_num += "XC"
    rem = rem % 90
  else
    fifty = rem / 50
    roman_num += "L" * fifty
    rem = rem % 50
  end

  ten = rem / 10
  if ten == 4
    roman_num += "XL"
  else
    roman_num += "X" * ten
  end
  rem = rem % 10

  if rem == 9
    roman_num += "IX"
  elsif rem == 4
    roman_num += "IV"
  else
    five = rem / 5
    roman_num += "V" * five
    rem = rem % 5

    one = rem
    roman_num += "I" * rem
  end
  return roman_num
end

puts (roman_numeral(1))