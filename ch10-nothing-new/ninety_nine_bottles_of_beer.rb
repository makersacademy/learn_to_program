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
  teenagers = ['eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen',
              'eighteen','nineteen']

  left = number

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


bottle_count = 7
bottles_left = bottle_count
while bottles_left > 2
	puts english_number(bottles_left).capitalize + ' bottles of beer on the wall,'
	puts english_number(bottles_left).capitalize + ' bottles of beer.'
	puts 'Take one down, pass it around,'
	bottles_left = bottles_left - 1
	puts english_number(bottles_left).capitalize + ' bottles of beer on the wall.'
end
puts 'Two bottles of beer on the wall,' 
puts 'Two bottles of beer.'
puts 'Take one down, pass it around,'
puts 'One bottle of beer on the wall.'
puts 'One bottle of beer on the wall,' 
puts 'One bottle of beer.'
puts 'Take it down, pass it around,'
puts 'No more bottles of beer on the wall.'

