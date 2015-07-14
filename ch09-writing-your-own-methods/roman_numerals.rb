

def new_roman_numeral number
  numbers =   [1000, 900, 500, 400, 100,90, 50, 40, 10, 9, 5, 4, 1]
  numerals = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]
  roman_numeral = " "
 
  numbers.length.times do |x|
    while number >= numbers[x]
      number -= numbers[x]
      roman_numeral += numerals[x]
    end
  end
 
  roman_numeral
end
 
print "Enter a number and we will convert: "
 
puts new_roman_numeral(gets.chomp.to_i)
