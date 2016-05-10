def roman_numeral(num)
  roman_string = ''

  single_digits = {1 => 'I', 2 => 'II', 3 => 'III', 4 => 'IV', 5 => 'V', 6 => 'VI', 7 => 'VII', 8 => 'VIII', 9 => 'IX'}

  tens = {1 => 'X', 2 => 'XX', 3 => 'XXX', 4 => 'XL', 5 => 'L', 6 => 'LX', 7 => 'LXX', 8 => 'LXXX', 9 => 'XC'}

  hundreds = {1 => 'C', 2 => 'CC', 3 => 'CCC', 4 => 'CD', 5 => 'D', 6 => 'DC', 7 => 'DCC', 8 => 'DCC', 9 => 'CM'}

  thousands = {1 => 'M'}

  if num / 1000 >= 1
    print = num / 1000
    left = num - (print * 1000)
    roman_string += "#{thousands[print]}"
  elsif num / 100 >= 1
    print = num / 100
    left = num - (print * 100)
    roman_string += "#{hundreds[print]}"
  elsif num /10 >= 1 && num /10 < 11
    print = num / 10
    left = num - (print * 10)
    roman_string += "#{tens[print]}"
  elsif num/10 < 1
     roman_string += "#{single_digits[num]}"
     left = 0
  end

  if left > 0
    next_num = roman_numeral(left)
    roman_string += next_num
  else
    return roman_string
  end
end
