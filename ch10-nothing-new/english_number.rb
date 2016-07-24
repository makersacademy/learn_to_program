def english_number number
  # No negative numbers.
  return 'Please enter a number that isn\'t negative.' if number < 0
  return 'zero' if number == 0
  num_string = '' # This is the string we will return.
  ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight',
    'nine']
  tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy',
    'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen',
    'seventeen', 'eighteen', 'nineteen']
  large_nums = {3 => ' thousand', 6 => ' million', 9 => ' billion', 12 => ' trillion',
    15 => ' quadrillion', 18 => ' quintillion', 21 => ' sextillion',
    24 => ' septillion', 27 => ' octillion', 30 => ' nonillion', 33 => ' decillion',
    36 => ' undecillion', 39 => ' duodecillion', 42 => ' tredecillion',
    45 => ' quattuordecillion', 48 => ' quindecillion', 51 => ' sexdecillion',
    54 => ' septendecillion', 57 => ' octodecillion', 60 => ' novemdecillion',
    63 => ' vigintillion'}
  # "left" is how much of the number we still have left to write out.
  # "write" is the part we are writing out right now.
  left = number

  while left >= 1000
    #power of ten is defined
    power = (left.to_s.length - 1) - (left.to_s.length - 1) % 3
    write, left = left / 10**power, left % (10**power)
    l_num_string = english_number(write)
    num_string += l_num_string + large_nums[power]
    num_string = num_string + ' ' if left > 0
  end

  # How many hundreds left?
  write, left = left/100, left % 100
  if write > 0
    # Now here's the recursion:
    hundreds = english_number write
    num_string += hundreds + ' hundred'
    num_string = num_string + ' ' if left > 0
  end

  # How many tens left?
  write, left = left/10, left % 10
  if write > 0
    if ((write == 1) and (left > 0))
      # Since we can't write "tenty-two" instead of
      # "twelve", we have to make a special exception for these.
      num_string += teenagers[left-1]
      # The "-1" is because teenagers[3] is 'fourteen', not 'thirteen'.
      # Since we took care of the digit in the ones place already, we have
      #nothing left to write.
      left = 0
    else
      num_string += tens_place[write-1]
      # The "-1" is because tens_place[3] is 'forty', not 'thirty'.
    end
    num_string += '-' if left > 0
  end

  # How many ones left to write out?
  write, left = left, 0
  if write > 0
    num_string = num_string + ones_place[write-1]
    # The "-1" is because ones_place[3] is 'four', not 'three'.
  end
  num_string
end
