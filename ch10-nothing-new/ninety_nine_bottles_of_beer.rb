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

  # "left" is how much of the number we still have left to write out.
  # "write" is the part we are writing out right now.
  # write and left... get it?  :)
  left  = number #THIS LINE ALWAYS GOES AT THE START
###################
# THOUSANDS
###################
  write=left/1000
  left = left-write*1000

  if write > 0
    thousands=english_number write
    numString = numString + thousands + ' thousand '
    
  end
    if left > 0
      numstring= numString + ', '
      
    end


###################
# HUNDREDS
###################
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
###################
# TENS
###################
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
###################
# ONES
###################
  write = left  # How many ones left to write out?
  left  = 0     # Subtract off those ones.

  if write > 0
    numString = numString + onesPlace[write-1]
    # The "-1" is because onesPlace[3] is 'four', not 'three'.
  end

  # Now we just return "numString"...
  numString
end



def beer_song bottles
  while bottles > 2
    puts "#{english_number(bottles).capitalize} bottles of beer on the wall, #{english_number(bottles)} bottles of beer!"
    puts "Take one down, pass it around, #{english_number(bottles-1)} bottles of beer on the wall!"
      bottles=bottles-1
  end
  puts "Two bottles of beer on the wall, two bottles of beer!"
  puts "Take one down, pass it around, one bottle of beer on the wall!"
  puts "One bottle of beer on the wall, one bottle of beer!"
  puts "Take one down, pass it around, no bottles of beer left on the wall!"
end

puts "How many bottles of beer on the wall?"
bottle_count=gets.chomp.to_i
beer_song(bottle_count)
