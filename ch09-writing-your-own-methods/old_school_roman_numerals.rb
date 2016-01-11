def old_roman_numeral num

  roman_old = ""
  left = num

  thousands = num / 1000
  roman_old << "M" * thousands
  left %= 1000

  hundreds = left / 100
  roman_old << build_string_part(hundreds,"D","C")
  left %= 100

  tens = left / 10
  roman_old << build_string_part(tens,"L","X")
  left %= 10

  roman_old << build_string_part(left,"V","I")
end

def build_string_part number, roman1, roman2
  string_part = ""
  if number >= 5
    string_part << (roman1 + roman2 * (number - 5))
  else
    string_part << roman2 * number
  end
  string_part
end

 puts old_roman_numeral 4999
 puts old_roman_numeral 1
 puts old_roman_numeral 500
 puts old_roman_numeral 89
