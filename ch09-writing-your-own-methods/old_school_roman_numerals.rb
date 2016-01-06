def old_roman_numeral num
	result = []
	if num <= 0
		puts "Must be a positive number"
	else
		result << "M" * (num / 1000)
		result << "D" * ((num % 1000) / 500)
		result << "C" * ((num % 500) / 100)
		result << "L" * ((num % 100) / 50)
		result << "X" * ((num % 50) / 10)
		result << "V" * ((num % 10) / 5)
		result << "I" * ((num % 5) / 1)
	end
	 result.join
end 




 