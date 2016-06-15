def ninetyNine(number)
  while number > 1
    # Convert to English Numbering
    if number < 0
      return 'Please enter a number that isn\'t negative.'
    end
    if number == 0
      return 'zero'
    end

    num_string = ''

    onesPlace = ['one',     'two',       'three',    'four',     'five',
                 'six',     'seven',     'eight',    'nine']
    tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
                 'sixty',   'seventy',   'eighty',   'ninety']
    teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
                 'sixteen', 'seventeen', 'eighteen', 'nineteen']
     left  = number

     # Quindecillions
     write = left/1000000000000000000000000000000000000000000000000
     left  = left - write*1000000000000000000000000000000000000000000000000
     if write > 0
       quindecillions = english_number write
       num_string = num_string + quindecillions + ' quindecillion'
       if left > 0
         num_string = num_string + ' '
       end
     end
     # Quattuordecillions
     write = left/1000000000000000000000000000000000000000000000
     left  = left - write*1000000000000000000000000000000000000000000000
     if write > 0
       quattuordecillions = english_number write
       num_string = num_string + quattuordecillions + ' quattuordecillion'
       if left > 0
         num_string = num_string + ' '
       end
     end
     # Tredecillions
     write = left/1000000000000000000000000000000000000000000
     left  = left - write*1000000000000000000000000000000000000000000
     if write > 0
       tredecillions = english_number write
       num_string = num_string + tredecillions + ' tredecillion'
       if left > 0
         num_string = num_string + ' '
       end
     end
     # Duodecillions
     write = left/1000000000000000000000000000000000000000
     left  = left - write*1000000000000000000000000000000000000000
     if write > 0
       duodecillions = english_number write
       num_string = num_string + duodecillions + ' duodecillion'
       if left > 0
         num_string = num_string + ' '
       end
     end
     # Undecillions
     write = left/1000000000000000000000000000000000000
     left  = left - write*1000000000000000000000000000000000000
     if write > 0
       undecillions = english_number write
       num_string = num_string + undecillions + ' undecillion'
       if left > 0
         num_string = num_string + ' '
       end
     end
     # Decillions
     write = left/1000000000000000000000000000000000
     left  = left - write*1000000000000000000000000000000000
     if write > 0
       decillions = english_number write
       num_string = num_string + decillions + ' decillion'
       if left > 0
         num_string = num_string + ' '
       end
     end
     # Nonillions
     write = left/1000000000000000000000000000000
     left  = left - write*1000000000000000000000000000000
     if write > 0
       nonillions = english_number write
       num_string = num_string + nonillions + ' nonillion'
       if left > 0
         num_string = num_string + ' '
       end
     end
     # Octillions
     write = left/1000000000000000000000000000
     left  = left - write*1000000000000000000000000000
     if write > 0
       octillions = english_number write
       num_string = num_string + octillions + ' octillion'
       if left > 0
         num_string = num_string + ' '
       end
     end
     # Septillions
     write = left/1000000000000000000000000
     left  = left - write*1000000000000000000000000
     if write > 0
       septillions = english_number write
       num_string = num_string + septillions + ' septillion'
       if left > 0
         num_string = num_string + ' '
       end
     end
     # Sextillions
     write = left/1000000000000000000000
     left  = left - write*1000000000000000000000
     if write > 0
       sextillions = english_number write
       num_string = num_string + sextillions + ' sextillion'
       if left > 0
         num_string = num_string + ' '
       end
     end
     # Quintillions
     write = left/1000000000000000000
     left  = left - write*1000000000000000000
     if write > 0
       quintillions = english_number write
       num_string = num_string + quintillions + ' quintillion'
       if left > 0
         num_string = num_string + ' '
       end
     end
     # Quadrillions
     write = left/1000000000000000
     left  = left - write*1000000000000000
     if write > 0
       quadrillions = english_number write
       num_string = num_string + quadrillions + ' quadrillion'
       if left > 0
         num_string = num_string + ' '
       end
     end
     # Trillions
     write = left/1000000000000
     left  = left - write*1000000000000
     if write > 0
       trillions = english_number write
       num_string = num_string + trillions + ' trillion'
       if left > 0
         num_string = num_string + ' '
       end
     end
     # Billions
     write = left/1000000000
     left  = left - write*1000000000
     if write > 0
       billions = english_number write
       num_string = num_string + billions + ' billion'
       if left > 0
         num_string = num_string + ' '
       end
     end
    # Millions
    write = left/1000000
    left  = left - write*1000000
    if write > 0
      millions = english_number write
      num_string = num_string + millions + ' million'
      if left > 0
        num_string = num_string + ' '
      end
    end
    # Thousands
    write = left/1000
    left  = left - write*1000
    if write > 0
      thousands = english_number write
      num_string = num_string + thousands + ' thousand'
      if left > 0
        num_string = num_string + ' '
      end
    end
    # Hundreds
    write = left/100
    left  = left - write*100
    if write > 0
      hundreds  = english_number write
      num_string = num_string + hundreds + ' hundred'
      if left > 0
        num_string = num_string + ' '
      end
    end
    # Tens
    write = left/10
    left  = left - write*10
    if write > 0
      if ((write == 1) and (left > 0))
        num_string = num_string + teenagers[left-1]
        left = 0
      else
        num_string = num_string + tensPlace[write-1]
      end

      if left > 0
        num_string = num_string + '-'
      end
    end
    # Ones
    write = left
    left  = 0
    if write > 0
      num_string = num_string + onesPlace[write-1]
    end

      puts "#{num_string} bottles of beer on the wall,"
      puts "#{num_string} bottles of beer."
      puts "Take one away."
      number = number - 1
      puts "What have you got?"
      puts "#{num_string} bottles of beer on the wall."
      puts "*BREATH*"
  end
    puts "one bottle of beer on the wall,"
    puts"one bottle of beer."
    puts "Take one away."
    puts "What have you got?"
    puts "No bottles of beer on the wall."
end

ninetyNine(40)
