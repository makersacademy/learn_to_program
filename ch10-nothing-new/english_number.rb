def english_number number
  # your code here
end



=begin
Expand upon english_number.
First, put in thousands.
So it should return 'one thousand' instead of 'ten hundred' and 'ten thousand' instead of 'one hundred hundred'.
=end

def english_number number
  if number < 0  # No negative numbers.
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

  # No more special cases! No more returns!

  numString = ''  # This is the string we will return.

  onesPlace = ['one',     'two',       'three',    'four',     'five', 'six',     'seven',     'eight',    'nine']
  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty', 'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

  quindecillion     = 1_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000
  quattuordecillion = 1_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000
  tredecillion      = 1_000_000_000_000_000_000_000_000_000_000_000_000_000_000
  duodecillion      = 1_000_000_000_000_000_000_000_000_000_000_000_000_000
  undecillion       = 1_000_000_000_000_000_000_000_000_000_000_000_000
  decillion         = 1_000_000_000_000_000_000_000_000_000_000_000
  nonillion         = 1_000_000_000_000_000_000_000_000_000_000
  octillion         = 1_000_000_000_000_000_000_000_000_000
  septillion        = 1_000_000_000_000_000_000_000_000
  sextillion        = 1_000_000_000_000_000_000_000
  quintillion       = 1_000_000_000_000_000_000
  quadrillion       = 1_000_000_000_000_000
  trillion          = 1_000_000_000_000
  billion           = 1_000_000_000
  million           = 1_000_000

  # "left" is how much of the number we still have left to write out.
  # "write" is the part we are writing out right now.
  # write and left... get it?  :)

  #Quindecillion
  left  = number
  write = left/quindecillion          # How many Quindecillion left to write out?
  left  = left - write*quindecillion  # Subtract off those Quindecillion.

  if write > 0
    # Now here's a really sly trick:
    quindecillions  = english_number write
    numString = numString + quindecillions + ' quindecillion'

    if left > 0
      # So we don't write 'two thousandfifty-one'...
      numString = numString + ' '
    end
  end

  #Quattuordecillion
  #left  = number
  write = left/quattuordecillion         # How many Quattuordecillion left to write out?
  left  = left - write*quattuordecillion # Subtract off those Quattuordecillion.

  if write > 0
    # Now here's a really sly trick:
    quattuordecillions  = english_number write
    numString = numString + quattuordecillions + ' quattuordecillion'

    if left > 0
      # So we don't write 'two thousandfifty-one'...
      numString = numString + ' '
    end
  end

  #Tredecillion
  #left  = number
  write = left/tredecillion          # How many Tredecillion left to write out?
  left  = left - write*tredecillion  # Subtract off those Tredecillion.

  if write > 0
    # Now here's a really sly trick:
    tredecillions  = english_number write
    numString = numString + tredecillions + ' tredecillion'

    if left > 0
      # So we don't write 'two thousandfifty-one'...
      numString = numString + ' '
    end
  end

  #Duodecillion
  #left  = number
  write = left/duodecillion          # How many Duodecillion left to write out?
  left  = left - write*duodecillion  # Subtract off those Duodecillion.

  if write > 0
    # Now here's a really sly trick:
    duodecillions  = english_number write
    numString = numString + duodecillions + ' duodecillion'

    if left > 0
      # So we don't write 'two thousandfifty-one'...
      numString = numString + ' '
    end
  end

  #Undecillion
  #left  = number
  write = left/undecillion          # How many Undecillion left to write out?
  left  = left - write*undecillion  # Subtract off those Undecillion.

  if write > 0
    # Now here's a really sly trick:
    undecillions  = english_number write
    numString = numString + undecillions + ' undecillion'

    if left > 0
      # So we don't write 'two thousandfifty-one'...
      numString = numString + ' '
    end
  end

  #Decillion
  #left  = number
  write = left/decillion          # How many Decillion left to write out?
  left  = left - write*decillion  # Subtract off those Decillion.

  if write > 0
    # Now here's a really sly trick:
    decillions  = english_number write
    numString = numString + decillions + ' decillion'

    if left > 0
      # So we don't write 'two thousandfifty-one'...
      numString = numString + ' '
    end
  end

  #Nonillion
  #left  = number
  write = left/nonillion          # How many Nonillion left to write out?
  left  = left - write*nonillion  # Subtract off those Nonillion.

  if write > 0
    # Now here's a really sly trick:
    nonillions  = english_number write
    numString = numString + nonillions + ' nonillion'

    if left > 0
      # So we don't write 'two thousandfifty-one'...
      numString = numString + ' '
    end
  end

  #Octillion
  #left  = number
  write = left/octillion          # How many Octillion left to write out?
  left  = left - write*octillion  # Subtract off those Octillion.

  if write > 0
    # Now here's a really sly trick:
    octillions  = english_number write
    numString = numString + octillions + ' octillion'

    if left > 0
      # So we don't write 'two thousandfifty-one'...
      numString = numString + ' '
    end
  end

  #Septillion
  #left  = number
  write = left/septillion          # How many Septillion left to write out?
  left  = left - write*septillion  # Subtract off those Septillion.

  if write > 0
    # Now here's a really sly trick:
    septillions  = english_number write
    numString = numString + septillions + ' septillion'

    if left > 0
      # So we don't write 'two thousandfifty-one'...
      numString = numString + ' '
    end
  end

  #Sextillion
  #left  = number
  write = left/sextillion          # How many Sextillion left to write out?
  left  = left - write*sextillion  # Subtract off those Sextillion.

  if write > 0
    # Now here's a really sly trick:
    sextillions  = english_number write
    numString = numString + sextillions + ' sextillion'

    if left > 0
      # So we don't write 'two thousandfifty-one'...
      numString = numString + ' '
    end
  end

  #Quintillion
  #left  = number
  write = left/quintillion          # How many Quintillion left to write out?
  left  = left - write*quintillion  # Subtract off those Quintillion.

  if write > 0
    # Now here's a really sly trick:
    quintillions  = english_number write
    numString = numString + quintillions + ' quintillion'

    if left > 0
      # So we don't write 'two thousandfifty-one'...
      numString = numString + ' '
    end
  end

  #Quadrillion
  #left  = number
  write = left/quadrillion          # How many Quadrillion left to write out?
  left  = left - write*quadrillion  # Subtract off those Quadrillion.

  if write > 0
    # Now here's a really sly trick:
    quadrillions  = english_number write
    numString = numString + quadrillions + ' quadrillion'

    if left > 0
      # So we don't write 'two thousandfifty-one'...
      numString = numString + ' '
    end
  end

  #Trillion
  #left  = number
  write = left/trillion          # How many Trillion left to write out?
  left  = left - write*trillion  # Subtract off those Trillion.

  if write > 0
    # Now here's a really sly trick:
    trillions  = english_number write
    numString = numString + trillions + ' trillion'

    if left > 0
      # So we don't write 'two thousandfifty-one'...
      numString = numString + ' '
    end
  end

  #Billion
  #left  = number
  write = left/billion          # How many Billion left to write out?
  left  = left - write*billion  # Subtract off those Billion.

  if write > 0
    # Now here's a really sly trick:
    billions  = english_number write
    numString = numString + billions + ' billion'

    if left > 0
      # So we don't write 'two thousandfifty-one'...
      numString = numString + ' '
    end
  end

  #Million
  #left  = number
  write = left/million          # How many millions left to write out?
  left  = left - write*million  # Subtract off those millions.

  if write > 0
    # Now here's a really sly trick:
    millions  = english_number write
    numString = numString + millions + ' million'

    if left > 0
      # So we don't write 'two thousandfifty-one'...
      numString = numString + ' '
    end
  end

  write = left/1000          # How many thousands left to write out?
  left  = left - write*1000  # Subtract off those thousands.

  if write > 0
    # Now here's a really sly trick:
    thousands  = english_number write
    numString = numString + thousands + ' thousand'

    if left > 0
      # So we don't write 'two thousandfifty-one'...
      numString = numString + ' '
    end
  end

  write = left/100          # How many hundreds left to write out?
  left  = left - write*100  # Subtract off those hundreds.

  if write > 0
    # Now here's a really sly trick:
    hundreds  = english_number write
    numString = numString + hundreds + ' hundred'
    # That's called "recursion". So what did I just do?
    # I told this method to call itself, but with "write" instead of
    # "number". Remember that "write" is (at the moment) the number of
    # hundreds we have to write out. After we add "hundreds" to
    # "numString", we add the string ' hundred' after it.
    # So, for example, if we originally called english_number with
    # 1999 (so "number" = 1999), then at this point "write" would
    # be 19, and "left" would be 99. The laziest thing to do at this
    # point is to have english_number write out the 'nineteen' for us,
    # then we write out ' hundred', and then the rest of
    # english_number writes out 'ninety-nine'.

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

#puts english_number(  0)
#puts english_number(  9)
#puts english_number( 10)
#puts english_number( 11)
#puts english_number( 17)
#puts english_number( 32)
#puts english_number( 88)
#puts english_number( 99)
#puts english_number(100)
#puts english_number(101)
#puts english_number(234)
#puts english_number(3211)
#puts english_number(9999)
#puts english_number(10000)
#puts english_number(10001)
#puts english_number(999999)
#puts english_number(1000000)
#puts english_number(1000001)
#puts english_number(1000101)
#puts english_number(1001101)
#puts english_number(1101101)
#puts english_number(1000000000000)
#puts english_number(109238745102938560129834709285360238475982374561034)