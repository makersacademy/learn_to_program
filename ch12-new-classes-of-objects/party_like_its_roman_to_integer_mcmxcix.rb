
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

return integer
end
