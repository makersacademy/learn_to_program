def roman_numeral num

  numerals = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]
  values = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
  output = ""

  values.each_with_index do |v, i|
    output << "#{numerals[i] * (num/v).floor}"
    num = num % v
  end

  return output

end
