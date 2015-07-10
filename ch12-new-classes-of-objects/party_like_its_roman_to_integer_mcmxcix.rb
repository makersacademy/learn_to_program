def roman_to_integer roman
	
	roman_vals = { "I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000}

	i = 0
	p = 0
	r = roman.upcase.reverse

	curr = 0

	until curr == r.length
		num = roman_vals [ r[curr] ]
		if !num
			puts "This is not a valid roman numeral!"
			exit
		end
		if num < p 
			num *= -1
		else
			p = num
		end
		i += num
		curr += 1
	end
	return i
end
puts "Please enter a roman numeral to change back to 'normal' numbers"
#rom = gets.chomp
puts roman_to_integer ('i')