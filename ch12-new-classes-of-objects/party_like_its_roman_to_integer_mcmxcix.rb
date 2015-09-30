def roman_to_integer roman

rom_hash = {"M" => 1000,
            "D" => 500,
            "C" => 100,
            "L" => 50,
            "X" => 10,
            "V" => 5,
            "I" => 1}


roman_array = roman.split("")
previous = roman_array.pop
numeral = rom_hash[previous]

while roman_array.length > 0
  current = roman_array.pop
  if rom_hash[current] >= rom_hash[previous]
    numeral = numeral + rom_hash[current]
  else
     numeral = numeral - rom_hash[current]
  end
  previous = current
end

numeral

end
