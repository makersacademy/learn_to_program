def english_number number
  if number < 0
    return 'Please enter number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end
  
  num_string = '' # the string that will be returned
  
  ones_place = ['one', 'two', 'three', 'four', 'five', 'six','seven', 'eight', 'nine']
  tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
  
  left = number
  write = left / 100 # how many hundreds left
  left = left - write * 100 # subtract the hundreds
  
  if write > 0
    # here is the recursion
    hundreds = english_number write
    num_string = num_string + hundreds + ' hundred'
    if left > 0
      # so we don't write 'two hundredfifty-one'
      num_string = num_string + ' '
    end
  end
  
  write = left / 10         # how many tens left
  left = left - write * 10  # subtract tens
  
  if write > 0
    if ((write == 1) and (left > 0))
      num_string = num_string + teenagers[left - 1] # the '-1' is because teenages[3] is fourteen, the thirteen.
      left = 0
    else
      num_string = num_string + tens_place[write - 1] # the '-1' is because tens[3] is forty, not thirty
    end
    
    if left > 0
      num_string = num_string + '-' # so we don't write sixtyfour
    end
  end
  
  write = left # how many ones left to write?
  left = 0     # subtract ones
  
  if write > 0
    num_string = num_string + ones_place[write - 1] # the '-1' is because the ones_place[3] is four, not three
  end
  
  num_string
  
end    
  

puts english_number( 0)
puts english_number( 9)
puts english_number( 10)
puts english_number( 11)
puts english_number( 17)
puts english_number( 32)
puts english_number( 88)
puts english_number( 99)
puts english_number(100)
puts english_number(101)
puts english_number(234)
puts english_number(3211)
puts english_number(999999)
puts english_number(1000000000000)