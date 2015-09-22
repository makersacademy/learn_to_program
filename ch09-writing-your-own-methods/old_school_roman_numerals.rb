def old_roman_numeral num
  numbers = [1000, 500, 100, 50, 10, 5, 1]
  numerals = ["M", "D", "C", "L", "X", "V", "I"]
  roman_num = ""
  j=0

  while j <= 6
  	while num >= numbers[j] 
  		num = num - numbers[j]
  		roman_num = roman_num + numerals[j]
  	end
  	j = j + 1
  end
   roman_num
end
puts "enter a number!"
puts old_roman_numeral(gets.chomp.to_i)