def english_number(number)
	if number < 0
		return 'Please enter a number that isn\'t negative.'
	end
	if number == 0
		return 'zero'
	end

	num_string = ''

	ones_place = ['one','two','three','four','five','six','seven','eight','nine']
	tens_place = ['ten','twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety']
	teenagers  = ['eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen']


	remaining = number

	current = remaining/1000000000000000
	remaining = remaining - current*1000000000000000

	if current > 0
		trillion = english_number(current)
		num_string = num_string + trillion + ' trillion'
		if remaining > 0
			num_string = num_string + ' '
		end
	end

	current = remaining/1000000000000
	remaining = remaining - current*1000000000000

	if current > 0
		trillion = english_number(current)
		num_string = num_string + trillion + ' trillion'
		if remaining > 0
			num_string = num_string + ' '
		end
	end
	
	current = remaining/1000000000
	remaining = remaining - current*1000000000

	if current > 0
		billion = english_number(current)
		num_string = num_string + billion + ' billion'
		if remaining > 0
			num_string = num_string + ' '
		end
	end

	current = remaining/1000000
	remaining = remaining - current*1000000

	if current > 0
		millions = english_number(current)
		num_string = num_string + millions + ' million'
		if remaining > 0
			num_string = num_string + ' '
		end
	end

	current = remaining/1000
	remaining = remaining - current*1000

	if current > 0
		thousands = english_number(current)
		num_string = num_string + thousands + ' thousand'
		if remaining > 0
			num_string = num_string + ' '
		end
	end

	current = remaining/100
	remaining = remaining - current*100

	if current > 0
		hundreds = english_number(current)
		num_string = num_string + hundreds + ' hundred'
		if remaining > 0
			num_string = num_string + ' '
		end
	end

	current = remaining/10
	remaining = remaining - current*10

	if current > 0
		if ((current == 1) and (remaining > 0))
			num_string = num_string + teenagers[remaining-1]
			remaining = 0
		else
			num_string = num_string + tens_place[current-1]
		end
		if remaining > 0
		num_string = num_string + '-'
		end
	end

	current = remaining
	remaining = 0

	if current > 0
		num_string = num_string + ones_place[current-1]
	end
	num_string
end