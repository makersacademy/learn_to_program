def english_number (number)

  	if number < 0
  		return "Please enter a number that isn\'t negative"
  	end
  	if number == 0
  		return "zero"
  	end

	num_string = ''
	ones_place = [	'one', 	 'two',   'three',
					'four',  'five',  'six',
					'seven', 'eight', 'nine']

	tens_place = [ 	'ten', 		'twenty', 'thirty',
					'forty', 	'fifty',  'sixty',
					'seventy', 	'eighty', 'ninety']

	teenagers = [	'eleven', 	 'twelve',   'thirteen',
					'fourteen',  'fifteen',  'sixteen',
					'seventeen', 'eighteen', 'nineteen']

	# zillions = [[	'hundred',	2],   # value = number of 00's
	# 			[	'thousand', 3],
	# 			[	'million', 	6],
	# 			[	'billion',  9],
	# 			[	'trillion',12]]

	left = number
	
	# while zillions.length > 0
	# 	zillions_pair = zillions.pop
	# 	zillions_name = zil_pair[0]
	# 	zillions_base = 10 ** zil_pair[1]

	# write = left/zillion_base
	# left = left - write*zillion_base

	# if write > 0
	# 	prefix = english_number write
	# 	num_string = num_string + prefix + '' + zillions_name

	# if left > 0
	# 	num_string = num_string + ''
	# end
	# end
	# end
	
	write = left/100
	left = left - write*100

	if write > 0
		hundreds = english_number write
		num_string = num_string + hundreds + ' hundred'

		if left > 0
		num_string = num_string + ' '
		end
	end

	write = left/10
	left = left - write*10

	if write > 0
		if ((write == 1) and (left > 0))
			num_string = num_string + teenagers[left - 1]
			left = 0
		else
			num_string = num_string + tens_place[write - 1]
		end
		if left > 0
			num_string = num_string + '-'
		end
	end

	write = left
	left = 0

	if write > 0   
		num_string = num_string + ones_place[write - 1]
	end
	num_string

end

puts english_number(22)
puts english_number(560)
# puts english_number(35690)

# I really struggled with the expanded version of this...  
# the recursion through me with use of 'write' and the while loop sent me into a loop...
