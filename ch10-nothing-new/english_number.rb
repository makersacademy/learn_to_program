def english_number number
  if number == 0
    return 'zero'
  end

  num_string = '' # This is the string we will return.

  ones_place = ['one', 'two', 'three',
                'four', 'five', 'six',
                'seven', 'eight', 'nine']

  teenagers = ['eleven', 'twelve', 'thirteen',
               'fourteen', 'fifteen', 'sixteen',
               'seventeen', 'eighteen', 'nineteen']

  tens_place = ['ten', 'twenty', 'thirty',
                'forty', 'fifty', 'sixty',
                'seventy', 'eighty', 'ninety']

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

  # "left" is how much of the number we still have left to write out.
  # "write" is the part we are writing out right now.
  left = number

  while zillions.length > 0
    zil_pair = zillions.pop
    zil_name = zil_pair[0]
    zil_base = 10 ** zil_pair[1]
    write = left/zil_base # How many zillions left?  note that write is not a float and rounds down
    left -= write*zil_base # Subtract off those zillions.

    if write > 0      
      prefix = english_number(write)
      num_string += prefix + ' ' + zil_name

      if left > 0
        # So we don't write 'two billionfifty-one'...
        num_string += ' '
      end
    end
  end
#looking at less than one hundred now
#need to first deal with the tens, e.g. if 42= forty-two
  write = left/10 
  left = left%10 

  if write > 0
    if ((write == 1) and (left > 0))
      # dealing with the teens
      num_string += teenagers[left-1]
      left = 0
    else
      num_string += tens_place[write-1]
    end

    if left > 0
      # So we don't write 'sixtyfour'...
      num_string += '-'
    end
  end
# looking at the single figure now
  write = left 
  left = 0 # nothing else to write so left =0

  if write > 0
    num_string += ones_place[write-1]
  end

  num_string
end

