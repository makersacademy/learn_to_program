def english_number number
  #def english_number number

 num_string = ''  # This is the string we will return.

  if number < 0  # No negative numbers.
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

  # No more special cases! No more returns!



  onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']


  # "left" is how much of the number we still have left to write out.
  # "write" is the part we are writing out right now.
  # write and left... get it?  :)


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
left = number


  # "left" is how much of the number
  # we still have left to write out.
  # "write" is the part we are
  # writing out right now.
  # write and left...get it? :)

  while zillions.length > 0
    zil_pair = zillions.pop


    zil_name = zil_pair[0] # gets the name out of the array by calling the first element
    zil_base = 10 ** zil_pair[1] #gets the number de based out of the array and adds the zeros


   write = left/zil_base # How many zillions left?
    left = left - write*zil_base # Subtract off those zillions.

    if write > 0
      # Now here's the recursion:
      write
      prefix = english_number write
      num_string = num_string + prefix + ' ' + zil_name


      if left > 0

        puts left
        # So we don't write 'two billionfifty-one'...
        num_string = num_string + ' '
      end
    end
  end




=begin

write = left/1000000000000
  left  = left - write*1000000000000
 if write > 0
    # Now here's a really sly trick:
   trillions  = english_number write
    num_string = num_string + trillions + ' trillion'


    if left > 0
      # So we don't write 'two hundredfifty-one'...
      num_string = num_string + ' '
    end
  end


  write = left/1000000000
  left  = left - write*1000000000
 if write > 0
    # Now here's a really sly trick:
   billions  = english_number write
    num_string = num_string + billions + ' billion'


    if left > 0
      # So we don't write 'two hundredfifty-one'...
      num_string = num_string + ' '
    end
  end




 if write > 0
    # Now here's a really sly trick:
   millions  = english_number write
    num_string = num_string + millions + ' million'


    if left > 0
      # So we don't write 'two hundredfifty-one'...
      num_string = num_string + ' '
    end
  end


  write = left/1000          # How many hundreds left to write out?
  left  = left - write*1000  # Subtract off those hundreds.

 if write > 0
    # Now here's a really sly trick:
   thousands  = english_number write
    num_string = num_string + thousands + ' thousand'


    if left > 0
      # So we don't write 'two hundredfifty-one'...
      num_string = num_string + ' '
    end
  end

  write = left/100          # How many hundreds left to write out?
  left  = left - write*100  # Subtract off those hundreds.

  if write > 0
    # Now here's a really sly trick:
    hundreds  = english_number write
    num_string = num_string + hundreds + ' hundred'
    # That's called "recursion". So what did I just do?
    # I told this method to call itself, but with "write" instead of
    # "number". Remember that "write" is (at the moment) the number of
    # hundreds we have to write out. After we add "hundreds" to
    # "num_string", we add the string ' hundred' after it.
    # So, for example, if we originally called english_number with
    # 1999 (so "number" = 1999), then at this point "write" would
    # be 19, and "left" would be 99. The laziest thing to do at this
    # point is to have english_number write out the 'nineteen' for us,
    # then we write out ' hundred', and then the rest of
    # english_number writes out 'ninety-nine'.


    if left > 0
      # So we don't write 'two hundredfifty-one'...
      num_string = num_string + ' '
    end
  end
=end

  write = left/10          # How many tens left to write out?
  left  = left - write*10  # Subtract off those tens.

  if write > 0
    if ((write == 1) and (left > 0))
      # Since we can't write "tenty-two" instead of "twelve",
      # we have to make a special exception for these.
      num_string = num_string + teenagers[left-1]
      # The "-1" is because teenagers[3] is 'fourteen', not 'thirteen'.

      # Since we took care of the digit in the ones place already,
      # we have nothing left to write.
      left = 0
    else
      num_string = num_string + tensPlace[write-1]
      # The "-1" is because tensPlace[3] is 'forty', not 'thirty'.
    end

    if left > 0
      # So we don't write 'sixtyfour'...
      num_string = num_string + '-'
    end
  end

  write = left  # How many ones left to write out?
  left  = 0     # Subtract off those ones.

  if write > 0
    num_string = num_string + onesPlace[write-1]
    # The "-1" is because onesPlace[3] is 'four', not 'three'.
  end

  # Now we just return "num_string"...
 num_string
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

puts english_number(1000000000000)


=end

english_number(100)