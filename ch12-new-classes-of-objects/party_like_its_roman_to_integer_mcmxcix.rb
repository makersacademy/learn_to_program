def roman_to_integer roman

roman = roman.upcase

return 'This is not a valid roman numeral' if roman.count("\\IVXLCDM") != roman.length

roman_numerals = {"I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100,
                  "D" => 500, "M" => 1000}

i = -1
integer = 0

while i >= -roman.length
  if i == -1
    integer += roman_numerals.values_at("#{roman[i]}").pop
elsif roman_numerals.values_at("#{roman[i]}").pop <
             roman_numerals.values_at("#{roman[i+1]}").pop

    integer -= roman_numerals.values_at("#{roman[i]}").pop
else
  integer += roman_numerals.values_at("#{roman[i]}").pop
end
i -= 1
end

puts integer
end




=begin


def roman_numeral num
  thousands = (num/1000)
  hundreds = (num%1000/100)
  tens = (num%100/10)
  ones = (num%10)

  roman = 'M' * thousands

  case hundreds
  when 9
    roman += 'CM'
  when 4
    roman += 'CD'
  else
    roman += 'D' * (num % 1000/500)
    roman += 'C' * (num % 500/100)
  end

  case tens
  when 9
    roman += 'XC'
  when 4
    roman += 'XL'
  else
    roman += 'L' * (num % 100/50)
    roman += 'X' * (num % 50/10)
  end

  case ones
  when 9
    roman += 'IX'
  when 4
    roman += 'IV'
  else
    roman += 'V' * (num % 10/5)
    roman += 'I' * (num % 5)
  end
end
