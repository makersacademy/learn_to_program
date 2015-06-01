def english_number number
	if number < 0
	   return 'Please enter a number that isn\'t negative.'
	end
	
  if number == 0
	   return 'zero'
  end

  num_string = ' ' # This is the string we will return.

  ones_place =     ['one ',           'two ',           'three ',
				            'four ',          'five ',          'six ',
                    'seven ',         'eight ',         'nine ']

	tens_place =    ['ten',            'twenty',        'thirty',
  			           'fourty',         'fifty',         'sixty',
  			           'seventy',        'eighty',        'ninety']

  teenagers  =    ['eleven ',         'twelve ',        'thirteen ',
  			           'fourteen ',       'fifteen ',       'sixteen ', 
  			           'seventeen ',      'eighteen ',      'nineteen ']

  left  = number
  write = left/1000000
  left  = left - write*1000000

  if write > 0

    millions = english_number write
    num_string = num_string + millions + 'million'
    if left > 0
      num_string = num_string + ' '
    end
  end

  write = left/1000 # How many thousands left?
  left  = left - write*1000 # Substract off those thousands

  if write > 0

    thousands  = english_number write
    num_string = num_string + thousands + 'thousand'
    if left > 0
      num_string = num_string + ' '
    end
  end

  write = left/100 # How many hundreds left?
  left  = left - write*100 # Subtract off those hundreds

  if write > 0
  		
  	hundreds   = english_number write
  	num_string = num_string + hundreds + 'hundred'
    if left > 0
  		num_string = num_string + ' '
    end
  end

  write = left/10 # How many tens left
  left  = left - write*10 # Subtract off those tens.

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


puts english_number(15000)
puts english_number(1000000)
puts english_number(2345667)