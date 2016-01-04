def roman_numeral num
  roman = ""
  left = num

  thousands = num / 1000
  roman << "M" * thousands
  left %= 1000

  hundreds = left / 100
  roman << build_string_part(hundreds,"D","C","M")
  left %= 100

  tens = left / 10
  roman << build_string_part(tens,"L","X","C")
  left %= 10

  roman << build_string_part(left,"V","I","X")
end

def build_string_part number, roman1, roman2, roman3
  string_part = ""
  case number
  when 4
    string_part << (roman2 + roman1)
  when 9
    string_part << (roman2 + roman3)
  else
    if number >= 5
      string_part << (roman1 + roman2 * (number - 5))
    else
      string_part << roman2 * number
    end
  end
  string_part
end

puts roman_numeral 4999
puts roman_numeral 4444
puts roman_numeral 500
puts roman_numeral 89
