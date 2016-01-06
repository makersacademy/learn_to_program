def english_number number
  if number < 0  # No negative numbers.
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

  left = number

  # No more special cases! No more returns!

  num_string = ''  # This is the string we will return.

  onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']

  zillions =    [['trillion', 12],
                ['quadrillion', 15],
                ['quintillion', 18],
                ['sextillion', 21],
                ['septillion', 24],
                ['octillion', 27],
                ['nonillion', 30],
                ['decillion', 33],
                ['undecillion', 36],
                ['duodecillion', 39],
                ['tredecillion', 42],
                ['quattuordecillion', 45],
                ['quindecillion', 48],
                ['sexdecillion', 51],
                ['septendecillion', 54],
                ['octodecillion', 57],
                ['novemdecillion', 60],
                ['vigintillion', 63],
                ['googol', 100]]

# zillions
                while zillions.length > 0   #As long as there are elements in the array - i.e we've divided by all options over 1 trillion
                  zil_pair = zillions.pop # Take out the last element in the array (to ensure we complete the whil loop)
                  zil_name = zil_pair[0] # name of the huge number is the first value of our array pair
                  zil_base = 10 ** zil_pair[1] # the second value in the array paid refers to the exponential of 10 that make the number that the name refers to - e.g a trillion is 10 ** 12, or 1,000,000,000,000
                  write = left/zil_base # How many zillions left - divide the number by the 'huge number' to see how many multiples (if any) there are  - if the huge number is bigger than our number, the answer will be 0 (integer not float)
                  left = left - write * zil_base # Subtract off those zillions. If write is zero, then we're subtracting nothing away from left, so our iteration completes through the loop without any change

                  if write > 0
                    # Now here's the recursion - this will only be executed once we get to the first zillions pair that our number can be divided by a return a positive integer
                    prefix = english_number write # we
                    num_string = num_string + prefix + ' ' + zil_name #

                    if left > 0
                      # So we don't write 'two billionfifty-one'... - this only gets executed if the write condition evaluates to true, so we don't just get lots of spaces
                      num_string = num_string + ' '
                    end
                  end
                end

  # billions
  write = left/ (10 ** 9)
  left = left -  write * (10 ** 9)

  if write > 0
    billions = english_number write
    num_string = num_string + billions + ' billion'

    if left > 0
      num_string = num_string + ' '
    end
  end


  # millions
  write = left / 10 ** 6
  left = left -  write* 10 ** 6

  if write > 0
    millions = english_number write
    num_string = num_string + millions + ' million'

    if left > 0
      num_string = num_string + ' '
    end
  end


  # thousands
  write = left/ (10 ** 3)
  left = left -  write * (10 ** 3)

  if write > 0
    thousands = english_number write
    num_string = num_string + thousands + ' thousand'

    if left > 0
      num_string = num_string + ' '
    end
  end

  # "left" is how much of the number we still have left to write out.
  # "write" is the part we are writing out right now.
  # write and left... get it?  :)

  write = left/100          # How many hundreds left to write out?
  left  = left - write*100  # Subtract off those hundreds.

  if write > 0
    # Now here's a really sly trick:
    hundreds  = english_number write
    num_string = num_string + hundreds + ' hundred'
    # That's called "recursion". So what did I just do?
    # I told this method to call itself, but with "write" instead of
    # "number". Remember that "write" is (at the moment) the number of
    # hundreds we have to write out. After we add "hundreds" to
    # "num_string", we add the string ' hundred' after it.
    # So, for example, if we originally called english_number with
    # 1999 (so "number" = 1999), then at this point "write" would
    # be 19, and "left" would be 99. The laziest thing to do at this
    # point is to have english_number write out the 'nineteen' for us,
    # then we write out ' hundred', and then the rest of
    # english_number writes out 'ninety-nine'.

    if left > 0
      # So we don't write 'two hundredfifty-one'...
      num_string = num_string + ' '
    end
  end

  write = left/10          # How many tens left to write out?
  left  = left - write*10  # Subtract off those tens.

  if write > 0
    if ((write == 1) and (left > 0))
      # Since we can't write "tenty-two" instead of "twelve",
      # we have to make a special exception for these.
      num_string = num_string + teenagers[left-1]
      # The "-1" is because teenagers[3] is 'fourteen', not 'thirteen'.

      # Since we took care of the digit in the ones place already,
      # we have nothing left to write.
      left = 0
    else
      num_string = num_string + tensPlace[write-1]
      # The "-1" is because tensPlace[3] is 'forty', not 'thirty'.
    end

    if left > 0
      # So we don't write 'sixtyfour'...
      num_string = num_string + '-'
    end
  end

  write = left  # How many ones left to write out?
  left  = 0     # Subtract off those ones.

  if write > 0
    num_string = num_string + onesPlace[write-1]
    # The "-1" is because onesPlace[3] is 'four', not 'three'.
  end

  # Now we just return "num_string"...
  num_string
end

 puts english_number (1274858462105723819836597365012731287048613725264387)
