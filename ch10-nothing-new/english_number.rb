def english_number number

	if number < 0 # No negative numbers.
		return 'Please enter a number that isn\'t negative.'
	end

	if number == 0
		return 'zero'
	end

	num_string = '' # This is the string we will return.

	ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
	tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
	teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
	large_number_words = ['million', 'billion', 'trillion', 'quadrillion', 'quintillion', 'sextillion', 'septillion',
							'octillion', 'nonillion', 'decillion', 'undecillion', 'duodecillion', 'tredecillion',
							'quattuordecillion', 'quindecillion']

	left = number

	#large numbers
	i = 48
	while left >= 10**6
		write = left / 10**i
		left = left - write*(10**i)
		if write > 0
			large_number = english_number(write)
			num_string = num_string + large_number + ' ' + large_number_words[(i/3)-2]
			if left > 0
				num_string = num_string + ' '
			end
		end
		i -= 3
	end

	#thousands
	write = left/1000
	left = left - write*1000
	if write > 0
		thousands = english_number(write)
		num_string = num_string + thousands + ' thousand'
		if left > 0
			num_string = num_string + ' '
		end
	end

	#hundreds
	write = left/100
	left = left - write*100
	if write > 0
		num_string = num_string + ones_place[write-1] + ' hundred'
		if left > 0
			num_string = num_string + ' '
		end
	end

	#tens
	write = left/10
	left = left - write*10
	if write > 0
		if ((write == 1) and (left > 0))
			num_string = num_string + teenagers[left-1]
			left = 0
		else
			num_string = num_string + tens_place[write-1]
		end
		if left > 0
			num_string = num_string + '-'
		end
	end

	write = left
	left = 0

	if write > 0
		num_string = num_string + ones_place[write-1]
	end

	num_string

end

