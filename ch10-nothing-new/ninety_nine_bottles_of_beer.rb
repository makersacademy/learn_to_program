class BeerSong


  def initialize (number)
    @bottles = number
    @bottles = 0  if number < 0
    @bottles = 9999 if number > 9999
  end


public

 def print_song
   while @bottles != 0
     puts "#{number_to_english(@bottles)} of beer on the wall,"
     puts "#{number_to_english(@bottles)} of beer,"
     puts "Take one down, pass it around,"
     @bottles -= 1
     puts "#{number_to_english(@bottles)} of beer on the wall."
   end
 end


#number_to_english METHOD VERY INSPIRED BY CHRIS PINES METHOD "englishNumber" from tutorial

def number_to_english number


    numString = ''  # This is the string we will return.

    onesPlace = ['one',     'two',       'three',    'four',     'five',
    'six',     'seven',     'eight',    'nine']
    tensPlace = ['Ten',     'Twenty',    'Thirty',   'Forty',    'Fifty',
    'Sixty',   'Seventy',   'Eighty',   'Ninety']
    teenagers = ['Eleven',  'Twelve',    'Thirteen', 'Fourteen', 'Fifteen',
    'Sixteen', 'Seventeen', 'Eighteen', 'Nineteen']

    left = number

    # We want the numbers to be capitalized, so special case for number less than 10 in beer song:
    if number < 10
      onesPlace = ['One',     'Two',       'Three',    'Four',     'Five',
      'Six',     'Seven',     'Eight',    'Nine']
    end


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

    # Now we just return "numString" + correct grammar for bottle vs bottles
    if number == 1
      return numString + " bottle"
    elsif number == 0
      return "Zero bottles"
    else
      return numString + " bottles"
    end

end
end
