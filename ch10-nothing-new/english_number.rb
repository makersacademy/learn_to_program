
#Note: Come up with solution that isn't hard coded. 
# Find a way to handle all numbers.

def english_number number
  if number < 0 #No negative numbers
    return 'Please enter number that isn.t negative'
  end
  if number == 0
      return 'zero'
  end
  
  num_string = ''
  
  ones_place = ['one','two', 'three', 
                'four','five','six',
                'seven', 'eight','nine']
                
  tens_place = ['ten', 'twenty', 'thirty',
                'forty', 'fifty', 'sixty',
                'seveny', 'eighty', 'ninety']
  
  teens = ['eleven', 'twelve', 'thirteen',
           'fourteen', 'fifteen', 'sixeen',
           'seventeen', 'eighteen','nineteen']
           
  left = number
  write = left/1000000000
  left = left - write*1000000000
  
  if write > 0
    millions = english_number write
      num_string = num_string + millions + '-billion'
    if left > 0
        num_string = num_string + ' '
    end
  end
  
  write = left/1000000
  left = left - write*1000000
  
  if write > 0
    millions = english_number write
      num_string = num_string + millions + '-million'
    if left > 0
        num_string = num_string + ' '
    end
  end
  
           
  #"left" is how much of the number we still have left to write out
  #"write" is the part we are writing out right 

  write = left/1000
  left = left - write*1000
  
  if write > 0
      thousands = english_number write
      num_string = num_string + thousands + '-thousand'
     if left > 0
        num_string = num_string + ' '
     end
  end
  
  write = left/100
  left = left - write*100
  if write > 0
    hundreds = english_number write
    num_string = num_string + hundreds + '-hundred'
     if left > 0
        num_string = num_string + ' '
     end
  end
  
  write = left/10
  left = left - write*10
  
  if write > 0
      if((write == 1) and (left>0))
          num_string = num_string + teens[left - 1]
          #the "-1" is because teens[3] is fourteen not thirteen
          left = 0
      else
          num_string = num_string + tens_place[write - 1]
          #the "-l" is because tens_place[3] is forty not thirty
      end
      if left > 0
          #So we don't write sixtyfour
          num_string = num_string + '-'
      end
  end
  
  write = left #How many ones left to write out?
  left = 0 #Subtract off those ones
  if write > 0 
      num_string = num_string + ones_place[write-1]
      #The -1 is because ones_place[3] is four not three
  end
  #Return finished num_string
  return num_string
end

puts english_number(12501000003)
