def roman_numerals(num)
  roman = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]
  ours = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
  number = roman.zip(ours)
  c = 0
  number.map {|k, v| c, num = num.divmod v; k*c }.join""
end

puts roman_numerals(1093)
