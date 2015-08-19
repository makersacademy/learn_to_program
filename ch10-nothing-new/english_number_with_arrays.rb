def english_number number 
	if number < 0
		return 'Please choose a positive number.'
	elsif number == 0
		return 'Zero'
	end

	numString = ''

	tensPlace = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']

	onesPlace = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']

	teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

	left = number

	write = left/1000
	left = left - write * 1000

	if write > 0
		thousands = english_number(write)

		numString = numString + thousands + ' thousand'

		if left > 0
			numString = numString + ' '
		end
	end

	write = left/100
	left = left - write * 100

	if write > 0
		hundreds = english_number(write)

		numString = numString + hundreds + ' hundred'

		if left > 0
			numString = numString + ' '
		end
	end


	write = left/10
	left = left - write * 10

	if write > 0
		if ((write == 1) and (left > 0))
			numString = numString + teenagers[left - 1]

			left = 0
		else 
			numString = numString + tensPlace[write - 1]

			if left > 0
				numString = numString + '-'
			end
		end
	end

	write = left
	left = 0

	if write > 0
		numString = numString + onesPlace[write - 1]
	end


	numString
end

puts english_number(12983)
puts english_number(10098)
puts english_number(2087)
puts english_number(0)
puts english_number(300)
puts english_number(400)
