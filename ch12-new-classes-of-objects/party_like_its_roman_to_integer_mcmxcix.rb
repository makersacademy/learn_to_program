def roman_to_integer roman
  roman_numeral_key = {
    "M" => 1000,
    "CM" => 900,
    "D" => 500,
    "CD" => 400,
    "C" => 100,
    "XC" => 90,
    "L" => 50,
    "X" => 10,
    "IX" => 9,
    "V" => 5,
    "IV" => 4,
    "I" => 1
  }

  unconverted = roman.upcase
  converted = 0

  while unconverted.length > 0
    if roman_numeral_key.has_key?(unconverted[0..1])
      converted += roman_numeral_key[unconverted[0..1]]
      unconverted[0..1] = ''
    elsif roman_numeral_key.has_key?(unconverted[0])
      converted += roman_numeral_key[unconverted[0]]
      unconverted[0] = ''
    else
      return "Please use a valid roman numeral"
    end
  end

  converted

end
