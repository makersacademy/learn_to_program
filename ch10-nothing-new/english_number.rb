def english_number number

  # No negative numbers.
  if number < 0
    return 'Please enter a number that isn\'t negative.'
  end

  # Handle zero as a special case.
  if number == 0
    return 'zero'
  end

  # Initialise the string to be returned.
  num_string = ''

  # Initialise the banks of English descriptions of Arabic numerals. I've shamelessly pinched Chris Pine's tables for my own use from the solution.
  ones = ['one', 'two', 'three',
                'four', 'five', 'six',
                'seven', 'eight', 'nine']

  tens = ['ten', 'twenty', 'thirty',
                'forty', 'fifty', 'sixty',
                'seventy', 'eighty', 'ninety']


  teens = ['eleven', 'twelve', 'thirteen',
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

  # I've followed Chris' convention, so "left" is how much of the number we still have *left* to write out. "write" is the part we are *write*[ing] out right now.

  # Initialise the amount left.
  left = number

  # Handle hundreds
  write = left / 100
  left = left - (write * 100)

  if write > 0

    # Use recursion to write out the number of hundreds.
    hundreds = english_number write

    num_string = num_string + hundreds + ' hundred'

    # Add space padding if there is more of the English string to come.
    if left > 0
      num_string = num_string + ' '
    end

  end

  # Handle tens
  write = left / 10
  left = left - (write * 10)

  if write > 0

    # Exception for handling teens, so no recursion here.
    if ((write == 1) and (left > 0))
      num_string = num_string + teens[left-1] # Array indices start at 0.
      left = 0 # Nothing left now as the teens include the ones digit.
    else
      num_string = num_string + tens[write-1] # Array indices start at 0.
    end

    # Add space padding if there is more of the English string to come.
    if left > 0
    num_string = num_string + '-'
    end

  end

  # Handle ones, there can be no more to write now.
  write = left # How many ones left to write out?
  left = 0

  if write > 0
  num_string = num_string + ones[write-1] # Array indices start at 0.
  end

  num_string
end

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
puts english_number(999999)
puts english_number(1000000000000)