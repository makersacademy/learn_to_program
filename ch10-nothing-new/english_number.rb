def english_number number
  # your code here
  if number < 0
  	return 'Please enter a number that isn\'t negative'
  end
  if number == 0
  	return 'zero'
  end

  num_string = ''

  ones_place = ['one','two','three','four','five','six','seven','eight','nine']
  tens_place = ['ten','twenty','thirty','forty','fifty','sixty', 'seventy','eighty','ninety']
  teenagers = ['eleven','twelve', 'thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen']

  left = number
  write = number/(10**48)
  left = left - write*(10**48)

  if write > 0
  	quindecillion = english_number write
  	num_string = num_string + quindecillion + ' quindecillion'
  	if left > 0
  		num_string = num_string + ' '
  	end
  end

  write = left/(10**45)
  left = left - write*(10**45)

  if write > 0
  	quattuordecillion = english_number write
  	num_string = num_string + quattuordecillion + ' quattuordecillion'
  	if left > 0
  		num_string = num_string + ' '
  	end
  end

  write = left/(10**42)
  left = left - write*(10**42)

  if write > 0
  	tredecillion = english_number write
  	num_string = num_string + tredecillion + ' tredecillion'
  	if left > 0
  		num_string = num_string + ' '
  	end
  end

  write = left/(10**39)
  left = left - write*(10**39)

  if write > 0
  	duodecillion = english_number write
  	num_string = num_string + duodecillion + ' duodecillion'
  	if left > 0
  		num_string = num_string + ' '
  	end
  end


  write = left/(10**36)
  left = left - write*(10**36)

  if write > 0
  	undecillion = english_number write
  	num_string = num_string + undecillion + ' undecillion'
  	if left > 0
  		num_string = num_string + ' '
  	end
  end


  write = left/(10**33)
  left = left - write*(10**33)
  if write > 0
  	decillion = english_number write
  	num_string = num_string + decillion + ' decillion'
  	if left > 0
  		num_string = num_string + ' '
  	end
  end

  write = left/(10**30)
  left = left - write*(10**30)

  if write > 0
  	nonillion = english_number write
  	num_string = num_string + nonillion + ' nonillion'
  	if left > 0
  		num_string = num_string + ' '
  	end
  end


  write = left/(10**27)
  left = left - write*(10**27)

  if write > 0
  	octillion = english_number write
  	num_string = num_string + octillion + ' octillion'
  	if left > 0
  		num_string = num_string + ' '
  	end
  end


  write = left/(10**24)
  left = left - write*(10**24)
  if write > 0
  	septillion = english_number write
  	num_string = num_string + septillion + ' septillion'
  	if left > 0
  		num_string = num_string + ' '
  	end
  end

  write = left/(10**21)
  left = left - write*(10**21)

  if write > 0
  	sextillion = english_number write
  	num_string = num_string + sextillion + ' sextillion'
  	if left > 0
  		num_string = num_string + ' '
  	end
  end


  write = left/(10**18)
  left = left - write*(10**18)

  if write > 0
  	quintillion = english_number write
  	num_string = num_string + quintillion + ' quintillion'
  	if left > 0
  		num_string = num_string + ' '
  	end
  end

  write = left/(10**15)
  left = left - write*(10**15)

  if write > 0
  	quadrillion = english_number write
  	num_string = num_string + quadrillion + ' quadrillion'
  	if left > 0
  		num_string = num_string + ' '
  	end
  end

  write = left/(10**12)
  left = left - write*(10**12)

  if write > 0
  	trillions = english_number write
  	num_string = num_string + trillions + ' trillion'
  	if left > 0
  		num_string = num_string + ' '
  	end
  end

  write = left/1000000000
  left = left - write*1000000000

  if write > 0
  	billions = english_number write
  	num_string = num_string + billions + ' billion'
  	if left > 0
  		num_string = num_string + ' '
  	end
  end
	
  write = left/1000000
  left = left - write*1000000

  if write > 0
  	millions = english_number write
  	num_string = num_string + millions + ' million'
  	if left > 0
  		num_string = num_string + ' '
  	end
  end

  write = left/1000
  left = left - write*1000

  if write > 0
  	thousands = english_number write
  	num_string = num_string + thousands + ' thousand'
  	if left > 0
  		num_string = num_string + ' '
  	end
  end

  write = left/100
  left  = left - write*100

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
  		num_string = num_string + teenagers[left-1]
  		left = 0
  	else
  		num_string = num_string + tens_place[write-1]
  	end
  end

  if left > 0 and  write > 0
  	num_string = num_string + '-'
  else
  	num_string = num_string + ''
  end

  write = left
  left = 0

  if write > 0
  		num_string = num_string + ones_place[write-1]
  end

  num_string
end

puts english_number 10000
puts english_number 35000
puts english_number 150000
puts english_number 500000
puts english_number 3500000
puts english_number 7300000



