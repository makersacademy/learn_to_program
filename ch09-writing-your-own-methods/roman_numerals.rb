def roman_numeral num
  letters = ""

  romans = {
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
          "I"  => 1
  }

  romans.each do |key, value|
    until num < value
      num -= value
      letters << key
    end
  end
 return letters
end