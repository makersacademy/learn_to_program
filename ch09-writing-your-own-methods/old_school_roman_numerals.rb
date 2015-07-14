def old_roman_numeral number
  numbers =   [1000,500, 100, 50, 10, 5, 1]
  numerals = ["M", "D", "C", "L", "X", "V", "I"]
  roman_numeral = " "
  x = 0
 
  while x <= 6
    while number >= numbers[x]
      number = number - numbers[x]
      roman_numeral = roman_numeral + numerals[x]
    end
    x = x + 1
  end
 
  roman_numeral
end
 
puts "Enter a number and we will convert it to a Roman numeral"
 
puts old_roman_numeral(gets.chomp.to_i)
