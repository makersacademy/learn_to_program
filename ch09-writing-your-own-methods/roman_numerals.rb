def roman_numeral num
  output = ""

  roman_nums = {
    "M" => 1000,
    "CM" => 900,
    "D" => 500,
    "CD" => 400,
    "C" => 100,
    "CX" => 90,
    "L" => 50,
    "XL" => 40,
    "X" => 10,
    "IX" => 9,
    "V" => 5,
    "IV" => 4,
    "I" => 1
  }

  roman_nums.map do |key, value|
    output << key * (num / value)
    num = num % value
  end
  output
end
