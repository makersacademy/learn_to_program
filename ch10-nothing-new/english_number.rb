def english_number number
  if number < 0 # No negative numbers.
    return 'Please enter a number that isn\'t negative.'
  end

  if number == 0
    return 'zero'
  end

  # No more special cases! No more returns!
  num_string = '' # This is the string we will return.

    ones_place = ['one',       'two',      'three',
                  'four',      'five',     'six',
                  'seven',     'eight',    'nine']

    tens_place = ['ten',       'twenty',   'thirty',
                  'forty',     'fifty',    'sixty',
                  'seventy',   'eighty',   'ninety']

    teenagers  = ['eleven',    'twelve',   'thirteen',
                  'fourteen',  'fifteen',  'sixteen',
                  'seventeen', 'eighteen', 'nineteen']

    # "left" is how much of the number
    #         we still have left to write out.
    #  "write" is the part we are
    #          writing out right now.
    #  write and left...get it?  :)

    # one hundred nine quindecillion
    left = number
    write = left/10**48
    number = left - write*10**48 # Subtract off

    if write > 0
      # Now here's the recursion:
      quindecillions = english_number write
      num_string = num_string + "#{quindecillions} quindecillion"
      if left > 0
        num_string = num_string + ' '
      end
    end

    #two hundred thirty-eight quattuordecillion
    left = number
    write = left/10**45
    number = left - write*10**45 # Subtract off

    if write > 0
      # Now here's the recursion:
      quattuordecillions = english_number write
      num_string = num_string + "#{quattuordecillions} quattuordecillion"
      if left > 0
        num_string = num_string + ' '
      end
    end

    #seven hundred forty-five tredecillion
    left = number
    write = left/10**42
    number = left - write*10**42 # Subtract off

    if write > 0
      # Now here's the recursion:
      tredecillions = english_number write
      num_string = num_string + "#{tredecillions} tredecillion"
      if left > 0
        num_string = num_string + ' '
      end
    end

    #one hundred two duodecillion
    left = number
    write = left/10**39
    number = left - write*10**39 # Subtract off

    if write > 0
      # Now here's the recursion:
      duodecillions = english_number write
      num_string = num_string + "#{duodecillions} duodecillion"
      if left > 0
        num_string = num_string + ' '
      end
    end

    #nine hundred thirty-eight undecillion
    left = number
    write = left/10**36
    number = left - write*10**36 # Subtract off

    if write > 0
      # Now here's the recursion:
      undecillions = english_number write
      num_string = num_string + "#{undecillions} undecillion"
      if left > 0
        num_string = num_string + ' '
      end
    end

    #five hundred sixty decillion
    left = number
    write = left/10**33
    number = left - write*10**33 # Subtract off

    if write > 0
      # Now here's the recursion:
      decillions = english_number write
      num_string = num_string + "#{decillions} decillion"
      if left > 0
        num_string = num_string + ' '
      end
    end

    #one hundred twenty-nine nonillion
    left = number
    write = left/10**30
    number = left - write*10**30 # Subtract off

    if write > 0
      # Now here's the recursion:
      nonillions = english_number write
      num_string = num_string + "#{nonillions} nonillion"
      if left > 0
        num_string = num_string + ' '
      end
    end

    #eight hundred thirty-four octillion
    left = number
    write = left/10**27
    number = left - write*10**27 # Subtract off

    if write > 0
      # Now here's the recursion:
      octillions = english_number write
      num_string = num_string + "#{octillions} octillion"
      if left > 0
        num_string = num_string + ' '
      end
    end

    #seven hundred nine septillion
    left = number
    write = left/10**24
    number = left - write*10**24 # Subtract off

    if write > 0
      # Now here's the recursion:
      septillions = english_number write
      num_string = num_string + "#{septillions} septillion"
      if left > 0
        num_string = num_string + ' '
      end
    end

    #two hundred eighty-five sextillion
    left = number
    write = left/10**21
    number = left - write*10**21 # Subtract off

    if write > 0
      # Now here's the recursion:
      sextillions = english_number write
      num_string = num_string + "#{sextillions} sextillion"
      if left > 0
        num_string = num_string + ' '
      end
    end

    #three hundred sixty quintillion
    left = number
    write = left/10**18
    number = left - write*10**18 # Subtract off

    if write > 0
      # Now here's the recursion:
      quintillions = english_number write
      num_string = num_string + "#{quintillions} quintillion"
      if left > 0
        num_string = num_string + ' '
      end
    end

    #two hundred thirty-eight quadrillion
    left = number
    write = left/10**15
    number = left - write*10**15 # Subtract off

    if write > 0
      # Now here's the recursion:
      quadrillions = english_number write
      num_string = num_string + "#{quadrillions} quadrillion"
      if left > 0
        num_string = num_string + ' '
      end
    end

    #four hundred seventy-five trillion
    left = number
    write = left/10**12
    number = left - write*10**12 # Subtract off

    if write > 0
      # Now here's the recursion:
      trillions = english_number write
      num_string = num_string + "#{trillions} trillion"
      if left > 0
        if number != 0
          num_string = num_string + ' '
        end
      end
    end

    #Billions

  left = number
  write = left/1000000000
  number = left - write*1000000000 # Subtract off those thousands.

  if write > 0
    # Now here's the recursion:
    billions = english_number write
    num_string = num_string + "#{billions} billion"
    if left > 0
      num_string = num_string + ' '
    end
  end

  left = number
  write = left/1000000
  number = left - write*1000000 # Subtract off those thousands.

  if write > 0
    # Now here's the recursion:
    millions = english_number write
    num_string = num_string + "#{millions} million"
    if left > 0
      num_string = num_string + ' '
    end
  end

  left = number
  write = left/1000
  number = left - write*1000 # Subtract off those thousands.

  if write > 0
    # Now here's the recursion:
    thousands = english_number write
    num_string = num_string + "#{thousands} thousand"
    if left > 0
      num_string = num_string + ' '
    end
  end


  left = number
  write = left/100 # How many hundreds left?
  left = left - write*100 # Subtract off those hundreds.

  if write > 0
    # Now here's the recursion:
    hundreds = english_number write
    num_string = num_string + "#{hundreds} hundred"
    if left > 0
      #  So we don't write 'two hundredfifty-one'...
      num_string = num_string + ' '
    end
  end

  write = left/10 # How many tens left?
  left = left - write*10 # Subtract off those tens.

  if write > 0 # no tens then nothing to do
    if ((write == 1) and (left > 0))
      #  Since we can't write "tenty-two" instead of
      #  "twelve", we have to make a special exception
      #  for these.
      num_string = num_string + teenagers[left-1]
      # The "-1" is because teenagers[3] is
      # 'fourteen', not 'thirteen'.
      # Since we took care of the digit in the
      # ones place already, we have nothing left to write.
      left = 0
    else
      num_string = num_string + tens_place[write-1]
      #  The "-1" is because tens_place[3] is
    # 'forty', not 'thirty'.
    end

    if left > 0
    # So we don't write 'sixtyfour'...
    num_string = num_string + '-'
    end
  end

  write = left # How many ones left to write out?
  left = 0 # Subtract off those ones.

  if write > 0
    num_string = num_string + ones_place[write-1] # The "-1" is because ones_place[3] is
    # 'four', not 'three'.
  end

  #  Now we just return "num_string"...
  #num_string
  num_string
end

puts english_number(  9)
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

#response = 'stay'
#while response != 'exit'
#  puts 'number?'
#  puts(english_number(gets.chomp.to_i))
#  puts 'Type exit to leave. Else press any other key.'
#  response = gets.chomp.downcase
#end

# 109238745102938560129834709285360238475982374561034 to
# one hundred nine quindecillion
#two hundred thirty-eight quattuordecillion
#seven hundred forty-five tredecillion
#one hundred two duodecillion
#nine hundred thirty-eight undecillion
#five hundred sixty decillion
#one hundred twenty-nine nonillion
#eight hundred thirty-four octillion
#seven hundred nine septillion
#two hundred eighty-five sextillion
#three hundred sixty quintillion
#two hundred thirty-eight quadrillion
#four hundred seventy-five trillion
#nine hundred eighty-two billion three hundred seventy-four million five hundred sixty-one thousand thirty-four
