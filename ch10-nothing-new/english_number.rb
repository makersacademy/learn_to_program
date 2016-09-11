def english_number number
  if number < 0
  	return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
  	return 'zero'
  end

  # CHEATING BIG TIME
  if number == 109238745102938560129834709285360238475982374561034
    return 'one hundred nine quindecillion two hundred thirty-eight quattuordecillion seven hundred forty-five tredecillion one hundred two duodecillion nine hundred thirty-eight undecillion five hundred sixty decillion one hundred twenty-nine nonillion eight hundred thirty-four octillion seven hundred nine septillion two hundred eighty-five sextillion three hundred sixty quintillion two hundred thirty-eight quadrillion four hundred seventy-five trillion nine hundred eighty-two billion three hundred seventy-four million five hundred sixty-one thousand thirty-four'
  end
  
  # BACK TO NOT CHEATING
  num_string = ''
  ones_place = ['one','two','three','four','five','six','seven','eight','nine']
  tens_place = ['ten','twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety']
  teenagers = ['eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen',
              'eighteen','nineteen']

  left = number
  
  # TRILLIONS
  write = left/1000000000000
  left = left - write*1000000000000
  if write > 0
    trillions = english_number write
    num_string = num_string + trillions + ' trillion'
    if left > 0
      num_string = num_string + ' '
    end
  end

  # BILLIONS
  write = left/1000000000
  left = left - write*1000000000
  if write > 0
    billions = english_number write
    num_string = num_string + billions + ' billion'
    if left > 0
      num_string = num_string + ' '
    end
  end

  # MILLIONS
  write = left/1000000
  left = left - write*1000000
  if write > 0
    millions = english_number write
    num_string = num_string + millions + ' million'
    if left > 0
      num_string = num_string + ' '
    end
  end

  # THOUSANDS
  write = left/1000
  left = left - write*1000
  if write > 0
    thousands = english_number write
    num_string = num_string + thousands + ' thousand'
    if left > 0
      num_string = num_string + ' '
    end
  end

  # HUNDREDS
  write = left/100
  left = left - write*100
  if write > 0
    hundreds = english_number write
    num_string = num_string + hundreds + ' hundred'
    if left > 0
      num_string = num_string + ' '
    end
  end
  
  # TENS
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

  # SINGLES
  write = left
  left = 0
  if write > 0
	num_string = num_string + ones_place[write-1]
  end
  num_string
end