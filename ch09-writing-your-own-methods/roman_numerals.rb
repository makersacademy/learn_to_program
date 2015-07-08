def roman_numeral num

	rom = ""

	if num <= 0
		puts "Please use a valid number to romanize."
		return false
	end

	rom_chars = [ 	[1000, "M", "M", "M"],
					[100, "C", "D", "M"],
					[10, "X", "L", "C"],
					[1, "I", "V", "X"], 	]

	print "The roman numeral of #{num} is "

	rom_chars.each do |x|
		if num == 0
			break
		end
		count = num / x[0]
		if x[1] == "M"
			rom << x[1] * count
		else
			if count == 9
				rom << x[1] + x[3]
			elsif count >= 5
				rom << x[2] + x[1] * (count - 5) 
			elsif count == 4
				rom << x[1] + x[2] 
			else
				rom << x[1] * count
			end
		end
		num = num % x[0]
	end
	return rom
end
num = gets.chomp.to_i
puts roman_numeral (num)