def roman_numeral num
  letters = ""

  roman = {
          "M"  => 1000,
          "CM" => 900,
          "D"  => 500,
          "CD" => 400,
          "C"  => 100,
          "XC" => 90,
          "L"  => 50,
          "XL" => 40,
          "X"  => 10,
          "IX" => 9,
          "V"  => 5,
          "IV" => 4,
          "I"  => 1}

  roman.each do |key, val|
    until num < val
      num -= val
      letters << key
    end
  end
 return letters
end