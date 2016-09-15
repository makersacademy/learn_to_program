def english_number number
    
  if number < 0
    return 'Please enter a number that isn\'t negative.'
  end
  
  if number == 0
    return 'zero'
  end

  num_string = '' # This is the string we will return.
  
  ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
  higher_powers = ['thousand','million', 'billion', 'trillion', 'quadrillion', 'quintillion', 'sextillion', 'septillion', 
  'octillion', 'nonillion', 'decillion', 'undecillion', 'duodecillion', 'tredecillion', 'quattuordecillion', 'quindecillion',
  'sedecillion', 'septendecillion', 'octodecillion', 'novendecillion', 'vigintillion']
  
    # "left" is how much of the number we still have left to write out.
    # "write" is the part we are writing out right now.
  left = number
  write = 0
  
  #deal with thousands up to vigintillions
  #start from vigintillion and go down to find the lowest power when write is not 0
  power = 63
  i = 20
  
  until power == 0
    ten_power = 10**power
    write = left/ten_power
    left = left - write*ten_power
    if write > 0
      illions = english_number write
      num_string = num_string + illions + ' ' + higher_powers[i]
      if left > 0
        # Add space between thousands and hundreds
        num_string = num_string + ' '
      end
    end
    power -= 3
    i -= 1
  end
  
  #deal with hundreds
  write = left/100 # How many hundreds left?
  left = left - write*100 # Subtract off those hundreds.
  if write > 0
     # Now here's the recursion:
     hundreds = english_number write
     num_string = num_string + hundreds + ' hundred'
     if left > 0
       # So we don't write 'two hundredfifty-one'...
       num_string = num_string + ' '
     end
  end

  #deal with tens
  write = left/10 
  left = left - write*10
  if write > 0
    #teenagers
    if ((write == 1) and (left > 0))
      num_string = num_string + teenagers[left-1]
      # The "-1" is because teenagers[3] is 'fourteen', not 'thirteen'.
      left = 0
    else
      num_string = num_string + tens_place[write-1]
      # The "-1" is because tens_place[3] is 'forty', not 'thirty'.
    end
    if left > 0
      # Add space between tens and ones
      num_string = num_string + '-'
    end
  end
  
  #deal with ones
  write = left 
  left = 0
  if write > 0
    num_string = num_string + ones_place[write-1]
    # The "-1" is because ones_place[3] is 'four', not 'three'.
  end
  
  # TA DA!
  num_string
  
end

def beer_song number
  while number > 0
    puts english_number(number).capitalize + " bottles of beer on the wall, " + english_number(number) +  " bottles of beer."
    puts "Take one down and pass it around, " + english_number(number-1) + " bottles of beer on the wall."
    number -= 1
  end
end

beer_song 9999