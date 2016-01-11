def english_number number
  if number < 0
  	return 'Please enter a number zero or greater.'
  end
  if number == 0
  	return 'zero'
  end

  num_string = ''

  ones_place = ['one', 		'two',		'three',
  				'four', 	'five',		'six',
  				'seven', 	'eight',	'nine']
  tens_place = ['ten',		'twenty',	'thirty',
  				'fourty',	'fifty',	'sixty',
  				'seventy',	'eighty',	'ninety']
  teenagers =  ['eleven', 	'twelve',	'thirteen',
  				'fourteen',	'fifteen',	'sixteen',
  				'seventeen','eighteen',	'nineteen']

  left = number

  write = left/1000    		#How many thousands left?
  left = left - write*1000	#Subract off those thousands

  if write > 0
  	thousands = english_number write		#recursion!
  	num_string = num_string + thousands + ' thousand'
  	if left > 0
  		num_string = num_string + ' '
  	end
  end


  write = left/100    		#How many hundreds left?
  left = left - write*100	#Subract off those hundreds

  if write > 0
  	hundreds = english_number write		#recursion!
  	num_string = num_string + hundreds + ' hundred'
  	if left > 0
  		num_string = num_string + ' '
  	end
  end

  write = left/10			#How many tens left?
  left = left - write*10 	#Subtract off those tens

  if write > 0
  	if ((write ==1) and (left > 0))
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

num = 5

while num >=2
		puts english_number(num) + " bottles of beer on the wall, " + english_number(num) + " bottles of beer."

		num = num-1

		puts "Take one down and pass it around, " + english_number(num) + " bottles of beer on the wall." 
end

