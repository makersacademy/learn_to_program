def english_number number

  if number < 0
    return "Please enter a number that isn't negative."
  elsif number == 0
    return 'zero'
  end

  # No more special cases! No more returns!
  num_string = '' # This is the string we will return.

  ones_place = ['one', 'two', 'three', "four", "five", "six", "seven", "eight","nine"]
  tens_place = ['ten', 'twenty', 'thirty',"forty","fifty","sixty","seventy","eighty","ninety"]
  teenagers = ['eleven', 'twelve', 'thirteen',"fourteen", 'fifteen', 'sixteen','seventeen', 'eighteen', 'nineteen']

  # "left" is how much of the number we still have left to write out.
  # "write" is the part we are writing out right now.

  left = number

  write = left/1000000000000 # How many trills left?
  left = left - write*1000000000000 # Subtract off those trills.

  if write > 0
      trills = english_number write
      num_string = num_string + trills + ' trillion'
      if left > 0
        num_string = num_string + ' '
      end
  end

  write = left/1000000000 # How many bills left?
  left = left - write*1000000000 # Subtract off those bills.

  if write > 0
      bills = english_number write
      num_string = num_string + bills + ' billion'
      if left > 0
        num_string = num_string + ' '
      end
  end

  write = left/1000000 # How many mills left?
  left = left - write*1000000 # Subtract off those mills.

  if write > 0
      mills = english_number write
      num_string = num_string + mills + ' million'
      if left > 0
        num_string = num_string + ' '
      end
  end

  write = left/1000 # How many thous left?
  left = left - write*1000 # Subtract off those thous.

  if write > 0
      thousands = english_number write
      num_string = num_string + thousands + ' thousand'
      if left > 0
        num_string = num_string + ' '
      end
  end

  write = left/100 # How many hundreds left?
  left = left - write*100 # Subtract off those hundreds.

  if write > 0
      hundreds = english_number write
      num_string = num_string + hundreds + ' hundred'
      if left > 0
        num_string = num_string + ' '
      end
  end

  write = left/10 # How many tens left?
  left = left - write*10 # Subtract off those tens.

  if write > 0
    if ((write == 1) and (left > 0))
      num_string = num_string + teenagers[left-1]
      left = 0
  # Since we can't write "tenty-two" instead of  "twelve", we have to make a
  # special exception for these.
    else
      num_string = num_string + tens_place[write-1]
    end

    if left > 0
      num_string = num_string + '-'
    end
  end

  write = left # How many ones left to write out?
  left = 0 # Subtract off those ones.

  if write > 0
    num_string = num_string + ones_place[write-1]
  end

  num_string
end

  puts english_number( 0)

  puts english_number( 9)

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

  puts english_number(999999)

  puts english_number(1000000000000)
