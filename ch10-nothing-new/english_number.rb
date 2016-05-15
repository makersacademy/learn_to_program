def english_number(number)
  if number < 0  # No negative numbers.
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

  # No more special cases! No more returns!

  numString = ''  # This is the string we will return.

  onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']

  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']

  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']

  bignums =   ['sexdecillion','quindecillion','quattuordecillion','tredecillion',
             'duodecillion', 'undecillion', 'decillion', 'nonillion', 'octillion',
             'septillion','sextillion', 'quintillion', 'quadrillion', 'trillion',
             'billion','million']


  #bignums!--------------------------------------------------
  arr_count = 0
  x = 51
    until x < 6
      if number /10 ** x >= 1
        write = number / 10 ** x
        left = number - (write * 10 ** x)
        to_add = english_number(write)
        numString += to_add + ' ' + bignums[arr_count]
        number = left
        if left > 0
        	numString += ' '
        end
      end
      x -= 3
      arr_count += 1
    end

  #thousands!--------------------------------------------------
  write =  number /1000 # How many thousands left to write out?
  left = number - write*1000 # subtract of those thousands.

  if write > 0

    thousands = english_number write
    numString = numString + thousands + ' thousand'

    if left > 0
      # So we don't write 'onethousandtwo hundred'...
      numString = numString + ' '
    end
  end

  #hundreds!--------------------------------------------------
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
  #tens!--------------------------------------------------
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
