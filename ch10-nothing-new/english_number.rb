def english_number number
if number < 0 # No negative numbers.
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

  # No more special cases! No more returns!

  num_string = '' # This is the string we will return.

  ones_place = ['one', 'two', 'three',
                'four', 'five', 'six',
                'seven', 'eight', 'nine']

  tens_place = ['ten', 'twenty', 'thirty',
                'forty', 'fifty', 'sixty',
                'seventy', 'eighty', 'ninety']


  teenagers = ['eleven', 'twelve', 'thirteen',
               'fourteen', 'fifteen', 'sixteen',
               'seventeen', 'eighteen', 'nineteen']

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

  # "left" is how much of the number
  # we still have left to write out.
  # "write" is the part we are
  # writing out right now.
  # write and left...get it? :)
  left = number

  while zillions.length > 0
    zil_pair = zillions.pop
    zil_name = zil_pair[0]
    zil_base = 10 ** zil_pair[1]
    write = left/zil_base # How many zillions left?
    left = left - write*zil_base # Subtract off those zillions.

    if write > 0
      # Now here's the recursion:
      prefix = english_number write
      num_string = num_string + prefix + ' ' + zil_name

      if left > 0
        # So we don't write 'two billionfifty-one'...
        num_string = num_string + ' '
      end
    end
  end

  write = left/10 # How many tens left?
  left = left - write*10 # Subtract off those tens.

  if write > 0
    if ((write == 1) and (left > 0))
      # Since we can't write "tenty-two" instead of
      # "twelve", we have to make a special exception
      # for these.
      num_string = num_string + teenagers[left-1]
      # The "-1" is because teenagers[3] is
      # 'fourteen', not 'thirteen'.

      # Since we took care of the digit in the
      # ones place already, we have nothing left to write.
      left = 0
    else
      num_string = num_string + tens_place[write-1]
      # The "-1" is because tens_place[3] is
      # 'forty', not 'thirty'.
    end

    if left > 0
      # So we don't write 'sixtyfour'...
      num_string = num_string + '-'
    end
  end

  write = left # How many ones left to write out?
  left = 0 # Subtract off those ones.

  if write > 0
    num_string = num_string + ones_place[write-1]
    # The "-1" is because ones_place[3] is
    # 'four', not 'three'.
  end

  # Now we just return "num_string"...
  num_string
  
end



=begin
#work in progress
def english_number number
 
if number == 0
	return "zero"
end

if number < 0
	return "Please enter a positive integer"
end


#Take a number, find the number of tens, then ones, then output them each with a gap between the two words
number_string = ''

giants = [['hundred', 2], ['thousand', 3]]

# Create an array that represents each interval of 10
tens = ['ten', 'twenty', 'thirty', 'fourty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']

# Create an array that represents each "teen" number as an exception
teens = ['eleven', 'twelve', 'thirten', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

# Create an array that represents each interval of 1
ones = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']


#We need to go through each value of giants, starting from the end. Check to see if our number is divisible by 
#the value specified there; if it is, then add the answer to our string. We also need to account for prefixes

while giants.length > 0
current_test = giants.pop
current_test_value = 10 ** current_test[1]
if (number / current_test_value) > 0





	number_string += current_test[0]
	remainder = number % current_test_value
	number = remainder
end
end


#Find the number of 10s: divide our number by 10, minus one from that number to get our index to compare to the tens 
#array.
if (remainder / 10) > 0 && (remainder / 10) < 100
string_ten = remainder / 10
index_ten = string_ten - 1
tens_value = tens[index_ten]
number_string += tens_value + ' '
remainder = remainder - tens_value
end

#Now see how many numbers are remaining
if remainder < 10 && remainder > 0
string_one = remainder
index_one = string_one - 1
ones_value = ones[index_one]
number_string += ones_value
end

number_string 

end


puts english_number 2100
=end
