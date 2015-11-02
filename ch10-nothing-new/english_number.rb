#Expand upon englishNumber. First, put in thousands. So it should return 'one thousand' instead of 'ten hundred' and 'ten thousand' instead of 'one hundred hundred'.
#Expand upon englishNumber some more. Now put in millions, so you get 'one million' instead of 'one thousand thousand'. Then try adding billions and trillions. How high can you go?
#How about weddingNumber? It should work almost the same as englishNumber, except that it should insert the word "and" all over the place, 
# returning things like 'nineteen hundred and seventy and two', or however wedding invitations are supposed to look. 
# I'd give you more examples, but I don't fully understand it myself. You might need to contact a wedding coordinator to help you.

def english_number number
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
  thousands = ['thousand']
  

  # "left" is how much of the number we still have left to write out.
  # "write" is the part we are writing out right now.
  # write and left... get it?  :)
  
  
  left  = number

  write = left/100000000000000000000000000000000000000000000000000          # How many trillions left to write out?
  left  = left - write*100000000000000000000000000000000000000000000000000  # Subtract off those hundreds.

    if write > 0
    trillions  = english_number write
    numString = numString + trillions + ' quindecillion'
    #recursion

    if left > 0
      numString = numString + ' '
    end
  end

write = left/1000000000000          # How many trillons left to write out?
  left  = left - write*1000000000000  # Subtract off those hundreds.

  if write > 0
    # Now here's a really sly trick:
    trillions  = english_number write
    numString = numString + trillions + ' trillion'

    if left > 0
      # So we don't write 'two hundredfifty-one'...
      numString = numString + ' '
    end
  end


  write = left/1000000000          # How many billions left to write out?
  left  = left - write*1000000000  # Subtract off those hundreds.

  if write > 0
    # Now here's a really sly trick:
    billians  = english_number write
    numString = numString + billians + ' billion'

    if left > 0
      # So we don't write 'two hundredfifty-one'...
      numString = numString + ' '
    end
  end

  write = left/1000000          # How many millions left to write out?
  left  = left - write*1000000  # Subtract off those hundreds.

  if write > 0
    # Now here's a really sly trick:
    millions  = english_number write
    numString = numString + millions + ' million'
    
    if left > 0
      # So we don't write 'two hundredfifty-one'...
      numString = numString + ' '
    end
  end

  write = left/1000          # How many thousands left to write out?
  left  = left - write*1000  # Subtract off those hundreds.

  if write > 0
    # Now here's a really sly trick:
    thousands  = english_number write
    numString = numString + thousands + ' thousand'
    # then we write out ' thousand', and then the rest of
    # englishNumber writes out 'ninety-nine'.

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

# puts englishNumber(  0)
puts english_number(900)
# puts englishNumber( 10)
# puts englishNumber( 11)
# puts englishNumber( 17)
# puts englishNumber( 32)
# puts englishNumber( 88)
# puts englishNumber( 99)
# puts englishNumber(100)
# puts englishNumber(101)
# puts englishNumber(234)
#puts englishNumber(3211)
#puts englishNumber(10250)
#puts englishNumber(2999999)
#puts englishNumber(1300000000000)