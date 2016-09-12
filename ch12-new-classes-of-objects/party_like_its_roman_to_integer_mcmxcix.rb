def roman_to_integer roman
roman = roman.downcase
length_of_numeral = roman.length
lookup_value = 0
running_total = 0

while lookup_value != length_of_numeral
  numeral_to_measure = roman[lookup_value]
  further_check = roman[lookup_value + 1]
  output_number = 0
  if numeral_to_measure == "i"
    if further_check == "v"
      output_number = -1
    elsif further_check == "x"
      output_number = -1
    else
      output_number = 1
    end
  end
  if numeral_to_measure == "x"
    if further_check == "l"
      output_number = -10
    elsif further_check == "c"
      output_number = -10
    else
      output_number = 10
    end
  end
  if numeral_to_measure == "c"
    if further_check == "d"
      output_number = -100
    elsif further_check == "m"
      output_number = -100
    else
      output_number = 100
    end
  end
  if numeral_to_measure == "v"
    output_number = 5
  end
  if numeral_to_measure == "l"
    output_number = 50
  end
  if numeral_to_measure == "d"
    output_number = 500
  end
  if numeral_to_measure == "m"
    output_number = 1000
  end

numeral_to_measure = numeral_to_measure.to_i + 1
running_total = running_total + output_number
lookup_value = lookup_value + 1
end
if running_total == 0
  puts "Not a valid roman numeral"
else
  puts running_total
  return running_total
end
return running_total
end

roman_to_integer "IX"
roman_to_integer "DLV"
roman_to_integer "MMXIV"
roman_to_integer "CXI"
roman_to_integer "CDXCIX"
roman_to_integer "mcx"
