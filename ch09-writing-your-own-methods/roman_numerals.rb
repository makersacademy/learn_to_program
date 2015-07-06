def roman_numeral num
  roman_num = ""

  thous = num / 1000
  roman_num += "M" * thous
  rem = num % 1000

  hund = rem / 100
  if hund == 9
    roman_num += "CM"
    rem = rem % 100
  elsif hund == 4
    roman_num += "CD"
    rem = rem % 100
  else
    five_hund = rem / 500
    roman_num += "D" * five_hund
    rem = rem % 500

    hund = rem / 100
    roman_num += "C" * hund
    rem = rem % 100
  end

  ten = rem / 10
  if ten == 9
    roman_num += "XC"
    rem = rem % 10
  elsif ten == 4
    roman_num += "XL"
    rem = rem % 10
  else
    fifty = rem / 50
    roman_num += "L" * fifty
    rem = rem % 50

    ten = rem / 10
    roman_num += "X" * ten
    rem = rem % 10
  end

  if rem == 9
    roman_num += "IX"
  elsif rem == 4
    roman_num += "IV"
  else
    five = rem / 5
    roman_num += "V" * five
    rem = rem % 5
    roman_num += "I" * rem
  end
  return roman_num
end

