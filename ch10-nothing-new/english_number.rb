def english_number number
  if number < 0 # Ensures no negative numbers
    retuns 'Please enter a number that isn\'t negative'
  end
  if number == 0
    return 'zero'
  end

  num_string = '' # String that we will returns

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
  write = left/1000000000000000
  left  = left - write*1000000000000000

  if write > 0
    #RECURSION!
    quadrillion  = english_number write
    num_string = num_string + quadrillion + ' quadrillion'
    if left > 0
      # so we don't write 'two hundredfifty-one'...
      num_string = num_string + ' '
    end
  end

  write = left/1000000000000
  left  = left - write*1000000000000

  if write > 0
    #RECURSION!
    trillion  = english_number write
    num_string = num_string + trillion + ' trillion'
    if left > 0
      # so we don't write 'two hundredfifty-one'...
      num_string = num_string + ' '
    end
  end

  write = left/1000000000
  left  = left - write*1000000000

  if write > 0
    #RECURSION!
    billion  = english_number write
    num_string = num_string + billion + ' billion'
    if left > 0
      # so we don't write 'two hundredfifty-one'...
      num_string = num_string + ' '
    end
  end

  write = left/1000000
  left  = left - write*1000000

  if write > 0
    #RECURSION!
    million  = english_number write
    num_string = num_string + million + ' million'
    if left > 0
      # so we don't write 'two hundredfifty-one'...
      num_string = num_string + ' '
    end
  end

  write = left/100000
  left  = left - write*100000

  if write > 0
    #RECURSION!
    hun_thousands  = english_number write
    num_string = num_string + hun_thousands + ' hundred thousand'
    if left > 0
      # so we don't write 'two hundredfifty-one'...
      num_string = num_string + ' '
    end
  end

  write = left/10000
  left  = left - write*10000

  if write > 0
    #RECURSION!
    ten_thousands  = english_number write
    num_string = num_string + ten_thousands + ' thousand'
    if left > 0
      # so we don't write 'two hundredfifty-one'...
      num_string = num_string + ' '
    end
  end

  write = left/1000
  left  = left - write*1000

  if write > 0
    #RECURSION!
    thousands  = english_number write
    num_string = num_string + thousands + ' thousand'
    if left > 0
      # so we don't write 'two hundredfifty-one'...
      num_string = num_string + ' '
    end
  end

  write = left/100
  left  = left - write*100

  if write > 0
    #RECURSION!
    hundreds  = english_number write
    num_string = num_string + hundreds + ' hundred'
    if left > 0
      # so we don't write 'two hundredfifty-one'...
      num_string = num_string + ' '
    end
  end

  write = left/10         # How many tens left?
  left = left - write*10  # Subract off tens

  if write > 0
    if ((write == 1) and (left > 0))
      # As we cant write 'tenty-two' instead of
      # 'twelve', we have to make a special exception
      # for these.

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
      # so we don't write 'sixtyfour'
      num_string = num_string + '-'
    end
  end

  write = left # How many ones left to write out?
  left  = 0    # Subtract off those ones.

  if write > 0
    num_string = num_string + ones_place[write-1]
    # The "-1" is because ones_place[3] is
    # 'four', not 'three'.
  end

  # Now we just return "num_string"...
  num_string
end

puts english_number(  0)
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
