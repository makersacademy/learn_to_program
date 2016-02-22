def roman_numeral num
  values =   [1000, 900, 500, 400, 100,90, 50, 40, 10, 9, 5, 4, 1]
  numerals = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]
  roman_numeral = ""
  i = 0
 
  while i <= 12
    while num >= values[i]
      num = num - values[i]
      roman_numeral = roman_numeral + numerals[i]
    end
    i = i + 1
  end
 
  roman_numeral
end
 
print "Enter the number you want to convert to a modern roman numeral: "
 
puts roman_numeral(gets.chomp.to_i)