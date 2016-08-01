def roman_to_integer str
	nums = {'m'=>1000, 'd'=>500, 'c'=>100, 'l'=>50, 'x'=>10, 'v'=>5, 'i'=>1}
	total = 0
	left = 0
	index = str.length - 1
	while index >= 0
		key = str[index].downcase
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
