def roman_to_integer str
	nums = {'M'=>1000, 'D'=>500, 'C'=>100, 'L'=>50, 'X'=>10, 'V'=>5, 'I'=>1}
	total = 0
	left = 0
	index = str.length - 1
	while index >= 0
		key = str[index]
		index -= 1
		val = nums[key]
		if !nums
			return "This is not a valid roman numeral!"
		end
		if val < left  #this deals with the new roman numeral form
			val *= -1
		else
			left = val
		end

		total += val
	end
	total		

end

puts(roman_to_integer('MCMXCIX'))
