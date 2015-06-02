def english_number number

  if number < 0
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

  num_string = ''

  ones_place = ['one', 'two', 'three',
  				  'four', 'five', 'six',
  			    'seven', 'eight', 'nine']
  tens_place = ['ten', 'twenty', 'thirty',
   				  'forty', 'fifty', 'sixty',
   			    'seventy', 'eighty', 'ninety']
  teenagers  = ['eleven', 'twelve', 'thirteen',
  				  'fourteen', 'fifteen', 'sixteen',
  			    'seventeen', 'eighteen', 'nineteen']

  left  = number
  write = left/1000000000000000000000000
  left  = left - write*1000000000000000000000000

  if write > 0
    trillions = english_number write
    num_string = num_string + trillions + ' trillion'
    if left > 0
      num_string = num_string + ' '
    end
  end

  write = left/1000000000000
  left  = left - write*1000000000000

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
  left  = left - write*1000

  if write > 0
    thousands = english_number write
    num_string = num_string + thousands + ' thousand'
    if left > 0
      num_string = num_string + ' '
    end
  end
  
  write = left/100
  left = left - write*100

  if write > 0
  	# this is the recursion
    hundreds   = english_number write
    num_string = num_string + hundreds + ' hundred'
    if left > 0
      num_string = num_string + ' '
    end
  end
  
  write = left / 10
  left  = left - write*10

  if write > 0
    if ((write == 1) and (left > 0))
      num_string = num_string + teenagers[left-1]
      # the -1 is because teenagers[3] is fourteen not thirteen.
      left = 0
    else 
   	  num_string = num_string + tens_place[write-1]
      # the -1 is because tensplace[3] is forty not thirty.
    end

    if left > 0
   	  #so we don't write sixtyfour
      num_string = num_string + '-'
    end
  end 

  write = left 
  left  = 0

  if write > 0
    num_string = num_string + ones_place[write-1]
    #the -1 is because onesplace[3] is four not three
  end 

  num_string
end   

puts english_number(0)
puts english_number(9)
puts english_number(12)
puts english_number(88)
puts english_number(99)
puts english_number(100)
puts english_number(154)
puts english_number(233)
puts english_number(3000)
puts english_number(10000)
puts english_number(1000000)
puts english_number(3000000)
puts english_number(3000500)
puts english_number(1000000000000)
puts english_number(22000000000000)
puts english_number(3000000000000000000000000)