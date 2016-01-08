def english_number number
  # your code here
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

  illions = Hash.new
  illions[10**15] = "quadrillion"
  illions[10**18] = "quintillion"
  illions[10**21] = "sextillion"
  illions[10**24] = "septillion"
  illions[10**27] = "octillion"
  illions[10**30] = "nonillion"
  illions[10**33] = "decillion"
  illions[10**36] = "undecillion"
  illions[10**39] = "duodecillion"
  illions[10**42] = "tredecillion"
  illions[10**45] = "quattuordecillion"
  illions[10**48] = "quindecillion"
  
  
  # "left" is how much of the number we still have left to write out.
  # "write" is the part we are writing out right now.
  # write and left... get it?  :)
  left  = number

  illions.keys.reverse.each do |n|
    write = left / n
    left = left - write * n

    if write > 0
      illion = english_number write
      # puts "#{illion}\n#{illions[number]}\n"
      numString = numString + illion + " " + illions[n]
      if left > 0
        numString = numString + " "
      end
    end
  end

  write = left/1000000000000          # How many hundreds left to write out?
  left  = left - write*1000000000000  # Subtract off those hundreds.

  if write > 0
    # Now here's a really sly trick:
    trillions = english_number write
    numString = numString + trillions + ' trillion'
    if left > 0
      # So we don't write 'two hundredfifty-one'...
      numString = numString + ' '
    end
  end

  write = left/1000000000          # How many hundreds left to write out?
  left  = left - write*1000000000  # Subtract off those hundreds.

  if write > 0
    # Now here's a really sly trick:
    billions = english_number write
    numString = numString + billions + ' billion'
    if left > 0
      # So we don't write 'two hundredfifty-one'...
      numString = numString + ' '
    end
  end

  write = left/1000000          # How many hundreds left to write out?
  left  = left - write*1000000  # Subtract off those hundreds.

  if write > 0
    # Now here's a really sly trick:
    millions = english_number write
    numString = numString + millions + ' million'
    if left > 0
      # So we don't write 'two hundredfifty-one'...
      numString = numString + ' '
    end
  end

  write = left/1000          # How many hundreds left to write out?
  left  = left - write*1000  # Subtract off those hundreds.

  if write > 0
    # Now here's a really sly trick:
    thousands = english_number write
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
    # That's called "recursion". So what did I just do?
    # I told this method to call itself, but with "write" instead of
    # "number". Remember that "write" is (at the moment) the number of
    # hundreds we have to write out. After we add "hundreds" to
    # "numString", we add the string ' hundred' after it.
    # So, for example, if we originally called englishNumber with
    # 1999 (so "number" = 1999), then at this point "write" would
    # be 19, and "left" would be 99. The laziest thing to do at this
    # point is to have englishNumber write out the 'nineteen' for us,
    # then we write out ' hundred', and then the rest of
    # englishNumber writes out 'ninety-nine'.

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

=begin
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
puts english_number(10000)
puts english_number(999999)
puts english_number(1000000000000)
puts english_number(4709285360238)
puts english_number(470928536023865)
puts english_number(4709285360238656)
puts english_number(470928536023847598237456103)
=end

