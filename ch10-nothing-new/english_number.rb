sh_number number
  if number < 0  # No negative numbers.
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

  numString = ''  # This is the string we will return.

  onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']


array = [["quindec", 48], ["quattuordec", 45], ["tredec", 42], ["duodec", 39], ["undec", 36], ["dec", 33], ["non", 30], ["oct", 27], ["sept", 24], ["sext", 21], ["quint", 18], ["quadr", 15], ["tr", 12], ["b", 9], ["m", 6]]

  # "left" is how much of the number we still have left to write out.
  # "write" is the part we are writing out right now.
  # write and left... get it?  :)
  left  = number
  array.each do |n|
    write = left/("1" + ("0" * n[1])).to_i          # How many trillions left to write out?
    left  = left - write*("1" + ("0" * n[1])).to_i # Subtract off those hundreds.

    if write > 0
     # Now here's a really sly trick:
     xillions  = english_number write
      numString = numString + xillions + ' ' + n[0] + 'illion'

      if left > 0
        # So we don't write 'two hundredfifty-one'...
       numString = numString + ' '
      end
    end
  end


  write = left/1000          # How many thousands left to write out?
  left  = left - write*1000  # Subtract off those hundreds.

  if write > 0
    # Now here's a really sly trick:
    thousands  = english_number write
    numString = numString + thousands + ' thousand'

    if left > 0
      # So we don't write 'two hundredfifty-one'...
      numString = numString + ' '
    end
  end

  write = left/100          # How many hundreds left to write out?
  left  = left - write*100  # Subtract off those hundreds.

  if write > 0
    # Now here's a really sly trick:
    hundreds  = english_number write
    numString = numString + hundreds + ' hundred'

    if left > 0
      # So we don't write 'two hundredfifty-one'...
      numString = numString + ' '
    end
  end

  write = left/10          # How many tens left to write out?
  left  = left - write*10  # Subtract off those tens.

  if write > 0
    if ((write == 1) and (left > 0))
      # Since we can't write "tenty-two" instead of "twelve",
      # we have to make a special exception for these.
      numString = numString + teenagers[left-1]
      # The "-1" is because teenagers[3] is 'fourteen', not 'thirteen'.

      # Since we took care of the digit in the ones place already,
      # we have nothing left to write.
      left = 0
    else
      numString = numString + tensPlace[write-1]
      # The "-1" is because tensPlace[3] is 'forty', not 'thirty'.
    end

    if left > 0
      # So we don't write 'sixtyfour'...
      numString = numString + '-'
    end
  end

  write = left  # How many ones left to write out?
  left  = 0     # Subtract off those ones.

  if write > 0
    numString = numString + onesPlace[write-1]
    # The "-1" is because onesPlace[3] is 'four', not 'three'.
  end

  # Now we just return "numString"...
  numString
end
