=begin
https://pine.fm/LearnToProgram/chap_08.html

Expand upon englishNumber. First, put in thousands. 
So it should return 'one thousand' instead of 'ten hundred' 
and 'ten thousand' instead of 'one hundred hundred'.
Expand upon englishNumber some more. 
Now put in millions, so you get 'one million' instead of 
'one thousand thousand'. Then try adding billions and trillions. 
How high can you go? 

=end


def weddingNumber number
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

  # "left" is how much of the number we still have left to write out.
  # "write" is the part we are writing out right now.
  # write and left... get it?  :)
  left  = number

#### ------------> TRILLIONS

write = left/1000000000000          # How many millions left to write out?
  left  = left - write*1000000000000  # Subtract off those millions.

if write > 0
    # trillions
    trillions  = weddingNumber write
    numString = numString + trillions + ' trillion'
 
    if left > 0
      # So we don't write 'two hundredfifty-one'...
      numString = numString + ' and '
    end
  end

#### ------------> BILLIONS

write = left/1000000000          # How many millions left to write out?
  left  = left - write*1000000000  # Subtract off those millions.

if write > 0
    # billions
    billions  = weddingNumber write
    numString = numString + billions + ' billion'
 
    if left > 0
      # So we don't write 'two hundredfifty-one'...
      numString = numString + ' and '
    end
  end

#### ------------> MILLIONS
  write = left/1000000          # How many millions left to write out?
  left  = left - write*1000000  # Subtract off those millions.

if write > 0
    # millions
    millions  = weddingNumber write
    numString = numString + millions + ' million'
 
    if left > 0
      # So we don't write 'two hundredfifty-one'...
      numString = numString + ' and '
    end
  end

#### ------------> THOUSANDS

  write = left/1000          # How many thousands left to write out?
  left  = left - write*1000  # Subtract off those thousands.

if write > 0
    # for thousands
    hundreds  = weddingNumber write
    numString = numString + hundreds + ' thousand'
    
    if left > 0
      # So we don't write 'two hundredfifty-one'...
      numString = numString + ', '
    end
  end

#### ------------> HUNDREDS

  write = left/100          # How many hundreds left to write out?
  left  = left - write*100  # Subtract off those hundreds.

  if write > 0
    # Now here's a really sly trick:
    hundreds  = weddingNumber write
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
      numString = numString + ' and '
    end
  end

#### ------------> TENS

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

#num = 99
def ninety_nine_bottles_of_beer num
while (num > 0)
  puts weddingNumber(num) + " bottles of beer on the wall, " + weddingNumber(num) + " bottles of beer."
  puts "Take one down and pass it around, " + weddingNumber(num-1) + " bottles of beer on the wall."
  num -= 1
end
end

=begin
puts weddingNumber(  0)
puts weddingNumber(  9)
puts weddingNumber( 10)
puts weddingNumber( 11)
puts weddingNumber( 17)
puts weddingNumber( 32)
puts weddingNumber( 88)
puts weddingNumber( 99)
puts weddingNumber(100)
puts weddingNumber(101)
puts weddingNumber(234)
puts weddingNumber(3211)
puts weddingNumber(999999)
puts weddingNumber(1000000000000) 
=end