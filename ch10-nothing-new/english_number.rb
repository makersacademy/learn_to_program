def english_number number
  if number < 0  
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

  numString = ''  

  onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']

  left = number

        write = left/1000000000000000000000000000000000000000000000000
  left = left - write*1000000000000000000000000000000000000000000000000

  if write > 0 
     quindecillions = english_number write
     numString = numString + quindecillions + ' quindecillion'

     if left > 0 
       numString = numString + ' '
     end
   end 

        write = left/1000000000000000000000000000000000000000000000
  left = left - write*1000000000000000000000000000000000000000000000

  if write > 0 
     quattuordecillions = english_number write
     numString = numString + quattuordecillions + ' quattuordecillion'

     if left > 0 
       numString = numString + ' '
     end
   end 


        write = left/1000000000000000000000000000000000000000000
  left = left - write*1000000000000000000000000000000000000000000

  if write > 0 
     tredecillions = english_number write
     numString = numString + tredecillions + ' tredecillion'

     if left > 0 
       numString = numString + ' '
     end
   end 

        write = left/1000000000000000000000000000000000000000
  left = left - write*1000000000000000000000000000000000000000

  if write > 0 
     duodecillions = english_number write
     numString = numString + duodecillions + ' duodecillion'

     if left > 0 
       numString = numString + ' '
     end
   end 

        write = left/1000000000000000000000000000000000000
  left = left - write*1000000000000000000000000000000000000

  if write > 0 
     undecillions = english_number write
     numString = numString + undecillions + ' undecillion'

     if left > 0 
       numString = numString + ' '
     end
   end 


        write = left/1000000000000000000000000000000000
  left = left - write*1000000000000000000000000000000000

  if write > 0 
     decillions = english_number write
     numString = numString + decillions + ' decillion'

     if left > 0 
       numString = numString + ' '
     end
   end 

        write = left/1000000000000000000000000000000
  left = left - write*1000000000000000000000000000000

  if write > 0 
     nonillions = english_number write
     numString = numString + nonillions + ' nonillion'

     if left > 0 
       numString = numString + ' '
     end
   end 

        write = left/1000000000000000000000000000
  left = left - write*1000000000000000000000000000

  if write > 0 
     octillions = english_number write
     numString = numString + octillions + ' octillion'

     if left > 0 
       numString = numString + ' '
     end
   end 

        write = left/1000000000000000000000000
  left = left - write*1000000000000000000000000

  if write > 0 
     septillions = english_number write
     numString = numString + septillions + ' septillion'

     if left > 0 
       numString = numString + ' '
     end
   end 

      write = left/1000000000000000000000
  left = left - write*1000000000000000000000

  if write > 0 
     sextillions = english_number write
     numString = numString + sextillions + ' sextillion'

     if left > 0 
       numString = numString + ' '
     end
   end 

    write = left/1000000000000000000
  left = left - write*1000000000000000000

  if write > 0 
     quintillions = english_number write
     numString = numString + quintillions + ' quintillion'

     if left > 0 
       numString = numString + ' '
     end
   end 


  write = left/1000000000000000
  left = left - write*1000000000000000

  if write > 0 
     quadrillions = english_number write
     numString = numString + quadrillions + ' quadrillion'

     if left > 0 
       numString = numString + ' '
     end
   end

  write = left/1000000000000
  left = left - write*1000000000000

  if write > 0 
     trillions = english_number write
     numString = numString + trillions + ' trillion'

     if left > 0 
       numString = numString + ' '
     end
   end


  write = left/1000000000
  left = left - write*1000000000

  if write > 0 
     billions = english_number write
     numString = numString + billions + ' billion'

     if left > 0 
       numString = numString + ' '
     end
   end


  write = left/1000000
  left = left - write*1000000

  if write > 0 
     millions = english_number write
     numString = numString + millions + ' million'

     if left > 0 
       numString = numString + ' '
     end
   end
  


  write = left/1000
  left = left - write*1000

  if write > 0 
     thousands = english_number write
     numString = numString + thousands + ' thousand'

     if left > 0 
       numString = numString + ' '
     end
   end

  write = left/100          
  left  = left - write*100  

  if write > 0
    hundreds  = english_number write
    numString = numString + hundreds + ' hundred'

    if left > 0
      
      numString = numString + ' '
    end
  end

  write = left/10          
  left  = left - write*10  

  if write > 0
    if ((write == 1) and (left > 0))

      numString = numString + teenagers[left-1]
     left = 0
    else
      numString = numString + tensPlace[write-1]
    end

    if left > 0
      numString = numString + '-'
    end
  end

  write = left  
  left  = 0     

  if write > 0
    numString = numString + onesPlace[write-1]
  end

  numString
end