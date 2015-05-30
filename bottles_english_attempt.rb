def english_number number
  if number < 0 
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

  num_string = ''
  ones_place = ['one', 'two', 'three','four', 'five', 'six', 'seven', 'eight', 'nine']
  tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']

  teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen' , 'eighteen', 'nineteen']



  left = number
  write = left / 1000
  left = left - write * 1000

  if write > 0
  	thousands = english_number write
  	num_string = num_string + thousands + ' thousand'

  	  if left > 0
  	  	num_string = num_string + ' '
      else 
        num_string = num_string + ' bottles of beer on the wall'
  	  end
  	end

  write = left/100 # How many hundreds left?
  left = left - write*100 # Subtract off those hundreds.

  if write > 0
  

    hundreds = english_number write
    num_string = num_string + hundreds + ' hundred'

      if left > 0
   

        num_string = num_string + ' and '
      else
        num_string = num_string + ' bottles of beer on the wall'
      end
  end

  write = left/10 # How many tens left?
  left = left - write*10 # Subtract off those tens.
  if write > 0
    if ((write == 1) and (left > 0))
    
      num_string = num_string + teenagers[left-1]
   
      left = 0
    else
      num_string = num_string + tens_place[write-1]
 
    end
    if left > 0
 
      num_string = num_string + '-'
    else
      num_string = num_string + ' bottles of beer on the wall'
    end
  end
  
  write = left # How many ones left to write out?
  left = 0 # Subtract off those ones.
  
  if write > 0
    num_string = num_string + ones_place[write-1] + ' bottles of beer on the wall'
  
  end
   
  num_string
  english_number(number-1)
end
puts english_number(17)
# puts english_number(5839)
