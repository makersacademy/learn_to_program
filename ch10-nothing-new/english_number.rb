def english_number number
  if number < 0 # No negative numbers.
    return 'Please enter a positive number'
  elsif number == 0
    return 'zero'
  end

  num_string = '' # This is the string we will return.

  ones_place = ['one', 'two', 'three',
                'four', 'five', 'six',
                'seven', 'eight', 'nine']

  tens_place = ['ten', 'twenty', 'thirty',
                'forty', 'fifty', 'sixty',
                'seventy', 'eighty', 'ninety']


  teenagers = ['eleven', 'twelve', 'thirteen',
               'fourteen', 'fifteen', 'sixteen',
               'seventeen', 'eighteen', 'nineteen']

  zillions = [['hundred', 2],
              ['thousand', 3],
              ['million', 6],
              ['billion', 9],
              ['trillion', 12],
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

  # "left" is what we still have to write out.
  left = number
# --------------------Zillions--------------------
# Writes until "zillions" array is empty
  while zillions.length > 0
    zil_pair = zillions.pop # Pops the last element of the array "zillions"
    zil_name = zil_pair[0] # Gets the first element of the popped element (which is an array)
    zil_base = 10 ** zil_pair[1] # 10^number position -> 1000 for thousand
    write = left/zil_base # How many zillions left?
    left = left - write*zil_base # Subtract off those zillions.

    if write > 0
      # recursion:
      prefix = english_number write
      num_string = num_string + prefix + ' ' + zil_name

      if left > 0
        # So we don't write 'two billionfifty-one'...
        num_string = num_string + ' '
      end
    end
  end
# --------------------Tens--------------------
  write = left/10 # How many tens left?
  left = left - write*10 # Subtract off those tens.

  if write > 0
    if ((write == 1) and (left > 0))
      # Teenagers
      num_string = num_string + teenagers[left-1]
      left = 0
    else
      # Tens
      num_string = num_string + tens_place[write-1]
    end

    if left > 0
      # Add - between tens and ones
      num_string = num_string + '-'
    end
  end

# --------------------Ones--------------------
  write = left # How many ones left to write out?
  left = 0 # Subtract off those ones.

  if write > 0
    num_string = num_string + ones_place[write-1]
  end
  # Return
  num_string
end
