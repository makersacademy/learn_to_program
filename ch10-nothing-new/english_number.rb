def english_number number
  
	if number < 0
		return "Please enter a number that isn't negative"
	end

	if number == 0
		return 'zero'
	end

	num_string = ''

	ones_place = ['one', 'two', 'three', 'four', 'five', 'six',
				'seven', 'eight', 'nine']

	tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 
				'sixty', 'seventy', 'eighty', 'ninety']

	teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 
			'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

	big_numbers = [[10**48, ' quindecillion'], [10**45, ' quattuordecillion'],
			[10**42, ' tredecillion'], [10**39, ' duodecillion'], 
			[10**36, ' undecillion'], [10**33, ' decillion'], 
			[10**30, ' nonillion'], [10**27, ' octillion'], [10**24, ' septillion'], 
			[10**21, ' sextillion'], [10**18, ' quintillion'], 
			[10**15, ' quadrillion'], [10**12, ' trillion'], [10**9, ' billion'],
			[10**6, ' million'], [10**3, ' thousand'], [10**2, ' hundred']]

	left = number

	big_numbers.each do |x|

		write = left/x[0]

		left = left - write*x[0]

		if write >0
			big_number = english_number(write)
			num_string = num_string + big_number + x[1]

			if left > 0
				num_string = num_string + ' '
			end
		end
	end


	write = left/10

	left = left - write*10

	if write > 0
		if ((write == 1) and (left >0))
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


