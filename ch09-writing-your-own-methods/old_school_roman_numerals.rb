def old_roman_numeral num
 	
	rom = ""
	num = num.to_i
 	if num <= 0
		puts "Please use a valid number to romanize."
		return false
	end

 	print "The old roman numeral of #{num} is "

	rom_chars = [ 	[1000, "M"],
					[500, "D"],
					[100, "C"],
					[50, "L"],
					[10, "X"],
					[5, "V"],
					[1, "I"], 	]

	rom_chars.each do |x|
		rom << x[1] * (num / x[0])
		num = num % x[0]
	end
	return rom
end
puts "Please enter a number you want the old school roman numeral of"

puts old_roman_numeral (gets.chomp)