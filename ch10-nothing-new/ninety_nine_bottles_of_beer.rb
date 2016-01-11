def a_lot_of_bottles bottles

  bottles_en_num = english_number bottles

  while bottles > 0

   if bottles == 1
     puts bottles_en_num + ' bottle of beer on the wall'
     puts bottles_en_num + ' bottle of beer'
   else
     puts bottles_en_num + ' bottles of beer on the wall'
     puts bottles_en_num + ' bottles of beer'
   end

   puts 'Take one down. puts it around'

   bottles = bottles - 1

   bottles_en_num = english_number bottles

   if bottles > 1
     puts bottles_en_num+ ' bottles of beer on the wall'
   else
     if bottles == 1
      puts bottles_en_num + ' bottle of beer on the wall'
     else
      puts 'No more bottles of beer on the wall'
     end
   end

   puts

  end
end

def english_number number
  if number < 0  # no negative numbers
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

  # No more special cases! No more returns!

  numString = ''  # This is the string we will return.

  onesPlace    = ['one',        'two',       'three',    'four',     'five',
                  'six',        'seven',     'eight',    'nine']
  tensPlace    = ['ten',        'twenty',    'thirty',   'forty',    'fifty',
                  'sixty',      'seventy',   'eighty',   'ninety']
  teenagers    = ['eleven',     'twelve',    'thirteen', 'fourteen', 'fifteen',
                  'sixteen',    'seventeen', 'eighteen', 'nineteen']
  zillionPlace = ['thousand',     'million',     'billion',    'trillion',
                  'quadrillion',  'quintillion', 'sextillion', 'septillion',
                  'octillion',    'nonillion',   'decillion',  'undecillion',
                  'duodecillion', 'tredecillion','quattuordecillion',
                  'quindecillion']

  # left is how much of the number we still have left to write out.
  # "write" is the part we are writing out right now.
  # write and left... get it? :)

  left  = number

  n = zillionPlace.length - 1
  while n >= 0

    # How many zillions left to write out?
    write = left/(1.to_s + '000'*(n + 1)).to_i
    # Subtract off those numbers.
    left  = left - write*(1.to_s + '000'*(n + 1)).to_i

    if write > 0
      # Now here's a really silly trick:
      zillions = english_number write
      numString = numString + zillions + ' ' + zillionPlace[n]
      # That's called "recursion". So what did I do?
      # I told this method to call itself, but with write instead of
      # "number". Remember that "write" is (at the moment) the number of
      # zillions we have to write out. After we add "zillions" to
      # "numString", we add the right zillion after it.
      # So for example, if we originally called englishNumber with
      # 19999999 (so "number" = 19999999, then at this point "write" would
      # be 19, and "left" would be 999999. The laziest thing to do at this
      # point is to have englishNumber write out the 'nineteen' for us,
      # then we write out the right zillion(million in this case, and then the rest of
      # englishNumber writes out 'nine hundred ninety-nine thousand
      # nine hundred ninety-nine'.


      if left > 0
        # So we don't write 'two millionfifty-one'...
        numString = numString + ' '
      end
    end
    n = n -
 1
  end



  write = left/100         # How many hundreds left to write out
  left  = left - write*100 # Subtract those hundreds

  if write > 0
    numString = numString + onesPlace[write-1] + ' hundred'
    # The "-1" is because write[3] is 'four', not 'three'

    if left > 0
      # So we don't write 'five hundredsixtyfour'...
      numString = numString + ' '
    end
  end

  write = left/10          # How many tens left to write out?
  left  = left - write*10  # Subtract off those tens

  if write > 0
    if ((write == 1) and (left > 0))
      # Since we can't write "tentytwo"instead of "twelve",
      # we have to make a special exception for these.
      numString = numString + teenagers[left-1]
      # The "-1" is because teenagers[3] is 'fourteen', not 'thirteen'.

      # Since we took care of the digit in the ones place already,
      # we have nothing left to write.
      left = 0
    else
      numString = numString + tensPlace[write-1]
      # The "-1" is because teenagers[3] is 'forty', not 'thirty'.
    end

    if left > 0
      # So we don't write 'sixtyfour'...
      numString = numString + '-'
    end
  end

  write = left  # How many ones left to write out?
  left = 0      # Subtract off those ones

  if write > 0
    numString = numString + onesPlace[write-1]
    # The "-1" is because teenagers[3] is 'four', not 'three'.
  end

  # Now we return "numString"...
  numString
end

# puts a_lot_of_bottles 9999
