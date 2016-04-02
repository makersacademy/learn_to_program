def english_number number
	if number < 0 
		return 'Please enter a number that isn\'t negative.'
	end
	if number == 0
		return 'zero'
	end

	num_string = '' # This is the string we will return.
	ones_place = ['one',	'two', 	'three',
				  'four',	'five',	'six',
				  'seven',	'eight','nine']
		
	tens_place = ['ten', 'twenty', 'thirty',
				  'forty','fifty','sixty',
				  'seventy','eighty','ninety']
	teenagers = ['eleven',	  'twelve',	  'thirteen',
				 'fourteen',  'fifteen',  'sixteen',
				 'seventeen', 'eighteen', 'nineteen']
	zillions = ['hundred', 	 		'thousand',			'million',		'billion',
                'trillion',	 		'quadrillion', 		'quintillion',	'sextillion',
               	'septillion',		'octillion',		'nonillion',	'decillion',
               	'undecillion',		'duodecillion',		'tredecillion',
                'quattuordecillion','quindecillion',	'sexdecillion',
               	'septendecillion', 	'octodecillion',	'novemdecillion',
               	'vigintillion',		'googol'] 			 

	left = number

	power = 48

	while left >= 10**3
		write = left / 10**power
 		left = left - write*(10**power)
 		if write > 0
 			large_number = english_number(write)
 			num_string = num_string + large_number + ' ' + zillions[(power/3)]
 			if left > 0
 				num_string = num_string + ' '
 			end
 		end
 		power -= 3
 	end
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
		if write == 1 && left > 0
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
	return num_string
end
