def english_number number
	if number < 0 
		return 'Please enter a positive number'
	end
	if number == 0
		return 'zero'
	end

	num_string = ''

	ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
	tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
	teenagers =  ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

	left = number
	write = left / 10**48
	left = left - write * 10**48
	
	if write > 0
		quindecillions = english_number write
		num_string = num_string + quindecillions + ' quindecillion'
		if left > 0
			num_string = num_string + ' '
		end
	end
	
	write = left / 10**45
	left = left - write * 10**45
	
	if write > 0
		quattuordecillions = english_number write
		num_string = num_string + quattuordecillions + ' quattuordecillion'
		if left > 0
			num_string = num_string + ' '
		end
	end
	
	write = left / 10**42
	left = left - write * 10**42

	if write > 0
		tredecillions = english_number write
		num_string = num_string + tredecillions + ' tredecillion'
		if left > 0
			num_string = num_string + ' '
		end
	end
	
	write = left / 10**39
	left = left - write * 10**39

	if write > 0
		duodecillions = english_number write
		num_string = num_string + duodecillions + ' duodecillion'
		if left > 0
			num_string = num_string + ' '
		end
	end
	
	write = left / 10**36
	left = left - write * 10**36

	if write > 0
		undecillions = english_number write
		num_string = num_string + undecillions + ' undecillion'
		if left > 0
			num_string = num_string + ' '
		end
	end
	
	write = left / 10**33
	left = left - write * 10**33

	if write > 0
		decillions = english_number write
		num_string = num_string + decillions + ' decillion'
		if left > 0
			num_string = num_string + ' '
		end
	end
	
	write = left / 10**30
	left = left - write * 10**30

	if write > 0
		nonillions = english_number write
		num_string = num_string + nonillions + ' nonillion'
		if left > 0
			num_string = num_string + ' '
		end
	end
	
	write = left / 10**27
	left = left - write * 10**27

	if write > 0
		octillions = english_number write
		num_string = num_string + octillions + ' octillion'
		if left > 0
			num_string = num_string + ' '
		end
	end
	
	write = left / 10**24
	left = left - write * 10**24

	if write > 0
		septillions = english_number write
		num_string = num_string + septillions + ' septillion'
		if left > 0
			num_string = num_string + ' '
		end
	end
	
	write = left / 10**21
	left = left - write * 10**21

	if write > 0
		sextillions = english_number write
		num_string = num_string + sextillions + ' sextillion'
		if left > 0
			num_string = num_string + ' '
		end
	end
	
	write = left / 10**18
	left = left - write * 10**18

	if write > 0
		quintillions = english_number write
		num_string = num_string + quintillions + ' quintillion'
		if left > 0
			num_string = num_string + ' '
		end
	end

	write = left / 10**15
	left = left - write * 10**15

	if write > 0
		quadrillions = english_number write
		num_string = num_string + quadrillions + ' quadrillion'
		if left > 0
			num_string = num_string + ' '
		end
	end
	
	write = left / 10**12
	left = left - write * 10**12

	if write > 0
		trillions = english_number write
		num_string = num_string + trillions + ' trillion'
		if left > 0
			num_string = num_string + ' '
		end
	end
	

	write = left / 10**9
	left = left - write * 10**9

	if write > 0
		billions = english_number write
		num_string = num_string + billions + ' billion'
		if left > 0
			num_string = num_string + ' '
		end
	end
	
	write = left / 10**6
	left = left - write * 10**6

	if write > 0
		millions = english_number write
		num_string = num_string + millions + ' million'
		if left > 0
			num_string = num_string + ' '
		end
	end

	
	write = left / 1000
	left = left - write * 1000

	if write > 0 
		thousands = english_number write
		num_string = num_string + thousands + ' thousand'
		if left > 0
			num_string = num_string + ' '
		end
	end

	write = left / 100
	left = left - write * 100

	if write > 0
		hundreds = english_number write
		num_string = num_string + hundreds + ' hundred'
		if left > 0
			num_string = num_string + ' '
		end
	end

	write = left / 10
	left = left - write * 10

	if write > 0
		if (write == 1 and (left > 0))
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



puts english_number(  0)
puts english_number(  9)
puts english_number( 10)
puts english_number( 11)
puts english_number( 17)
puts english_number( 32)
puts english_number( 88)
puts english_number( 99)
puts english_number(100)
puts english_number(101)
puts english_number(234)
puts english_number(13211)
puts english_number(32212)
puts english_number(32311)
puts english_number(63241)
puts english_number(999999)
puts english_number(1532320)
puts english_number(1532320)
puts english_number(5324320)
puts english_number(423453320)
puts english_number(10000000)