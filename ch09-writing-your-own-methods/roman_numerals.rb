def roman_numeral num

  output = ""

  roman_numbers = {
    "M" => 1000,
    "CM" => 900, "CX" => 90, "IX" => 9,
    "D"  => 500, "L"  => 50, "V"  => 5,
    "CD" => 400, "XL" => 40, "IV" => 4,
    "C"  => 100, "X"  => 10, "I"  => 1
  }

  roman_numbers.map do |key, value|
    output << key * (num / value)
    num = num % value
  end

output
end

roman_numeral 4
