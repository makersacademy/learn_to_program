def old_roman_numeral number
  values =   [1000,500, 100, 50, 10, 5, 1]
  numerals = ["M", "D", "C", "L", "X", "V", "I"]
  roman_numeral = ""
  i = 0
 
  while i <= 6
    while number >= values[i]
      number = number - values[i]
      roman_numeral = roman_numeral + numerals[i]
    end
    i = i + 1
  end
 
  roman_numeral
end
 
print "Enter the number you want to convert to an old roman numeral: "
 
puts old_roman_numeral(gets.chomp.to_i)
