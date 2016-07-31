Symbols = {"M" => 1000, "CM" => 900, "D" => 500, "CD" => 400,
  "C" => 100, "XC" => 90, "L" => 50, "XL" => 40,
  "X" => 10, "IX" => 9, "V" => 5, "IV" => 4,
  "I" => 1}

def roman_numeral num
  Symbols.map do |letter, number|
    amount, num = num.divmod(number)
    letter * amount
  end.join
end

puts roman_numeral 1349
