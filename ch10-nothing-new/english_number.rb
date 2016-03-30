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
   left  = number


#quindecillion 10^48
#quattuordecillion 10^45
#tredecillion 10^42
#duodecillion 10^39
#undecillion 10^36
#decillion 10 ^33
#nonillion 10 ^30
#octillion 10^27
#septillion 10^24
#sextillion 10^21
#quintillion 10^18
#quadrillion 10^15

    write = left/(10**48)                      # How many quindecillion left to write out?
    left  = left - write*(10**48)               # Subtract off those
      if write > 0
          millions  = english_number write
          numString = numString + millions + ' quindecillion'
          if left > 0
              numString = numString + ' '
          end
      end

    write = left/(10**45)                      # How many quattuordecillion left to write out?
    left  = left - write*(10**45)               # Subtract off those
      if write > 0
          millions  = english_number write
          numString = numString + millions + ' quattuordecillion'
          if left > 0
              numString = numString + ' '
          end
      end

    write = left/(10**42)                      # How many tredecillion left to write out?
    left  = left - write*(10**42)               # Subtract off those
      if write > 0
          millions  = english_number write
          numString = numString + millions + ' tredecillion'
          if left > 0
              numString = numString + ' '
          end
      end

    write = left/(10**39)                      # How many duodecillion left to write out?
    left  = left - write*(10**39)               # Subtract off those
      if write > 0
          millions  = english_number write
          numString = numString + millions + ' duodecillion'
          if left > 0
              numString = numString + ' '
          end
      end

    write = left/(10**36)                      # How many undecillion left to write out?
    left  = left - write*(10**36)               # Subtract off those
      if write > 0
          millions  = english_number write
          numString = numString + millions + ' undecillion'
          if left > 0
              numString = numString + ' '
          end
      end

    write = left/(10**33)                      # How many decillion left to write out?
    left  = left - write*(10**33)               # Subtract off those
      if write > 0
          millions  = english_number write
          numString = numString + millions + ' decillion'
          if left > 0
              numString = numString + ' '
          end
      end

    write = left/(10**30)                      # How many nonillion left to write out?
    left  = left - write*(10**30)               # Subtract off those
      if write > 0
          millions  = english_number write
          numString = numString + millions + ' nonillion'
          if left > 0
              numString = numString + ' '
          end
      end

    write = left/(10**27)                        # How many octillion left to write out?
    left  = left - write*(10**27)              # Subtract off those
      if write > 0
          millions  = english_number write
          numString = numString + millions + ' octillion'
          if left > 0
              numString = numString + ' '
          end
      end

    write = left/(10**24)                       # How many septillion left to write out?
    left  = left - write*(10**24)                # Subtract off those
      if write > 0
          millions  = english_number write
          numString = numString + millions + ' septillion'
          if left > 0
              numString = numString + ' '
          end
      end

    write = left/(10**21)                          # How many sextillion left to write out?
    left  = left - write*(10**21)                  # Subtract off those
      if write > 0
          millions  = english_number write
          numString = numString + millions + ' sextillion'
          if left > 0
              numString = numString + ' '
          end
      end

   write = left/(10**18)                         # How many quintillion left to write out?
   left  = left - write*(10**18)                # Subtract off those
     if write > 0
         millions  = english_number write
         numString = numString + millions + ' quintillion'
         if left > 0
             numString = numString + ' '
         end
     end

   write = left/(10**15)                     # How many quadrillions left to write out?
   left  = left - write*(10**15)              # Subtract off those
     if write > 0
         millions  = english_number write
         numString = numString + millions + ' quadrillion'
         if left > 0
             numString = numString + ' '
         end
     end

   write = left/1000000000000          # How many trillions left to write out?
   left  = left - write*1000000000000  # Subtract off those trillions.
     if write > 0
         millions  = english_number write
         numString = numString + millions + ' trillion'
         if left > 0
             numString = numString + ' '
         end
     end

    write = left/1000000000          # How many billions left to write out?
    left  = left - write*1000000000  # Subtract off those trillions.
      if write > 0
          millions  = english_number write
          numString = numString + millions + ' billion'
          if left > 0
              numString = numString + ' '
          end
      end



   write = left/1000000          # How many millions left to write out?
   left  = left - write*1000000  # Subtract off those millions.


   if write > 0
       # Now here's a really sly trick:
       millions  = english_number write
       numString = numString + millions + ' million'
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



   write = left/100000          # How many hundre thousands left to write out?
   left  = left - write*100000  # Subtract off those hundred thiusands.


   if write > 0
       # Now here's a really sly trick:
       hundredK  = english_number write
       numString = numString + hundredK + ' hundred'
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




   # "left" is how much of the number we still have left to write out.
    # "write" is the part we are writing out right now.
    # write and left... get it?  :)

    write = left/1000          # How many thousands left to write out?
    left  = left - write*1000  # Subtract off those thousands.


    if write > 0
        # Now here's a really sly trick:
        thousands  = english_number write
        numString = numString + thousands + ' thousand'
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
