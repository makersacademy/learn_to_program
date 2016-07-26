def english_number number
  if number < 0
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

  num_string = ''
  ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
  million_plus = {6 => 'million', 9 => 'billion', 12 => 'trillion'}

  left = number

  while left > 999999
  exp = (left.to_s.length-1) - (left.to_s.length-1)%3 # finding exponent of 10
  write = left/10**exp # How many 10^exp left?
  left = left - write*(10**exp) # Subtract those millions/billions/trillions
    if write > 0
      big_num = english_number write
      num_string = num_string + big_num + " #{million_plus[exp]}"
      if left > 0
        num_string = num_string + ' '
      end
    end
  end

  write = left/1000 # How many thousands left?
  left = left - write*1000 # Subtract off those thousands.

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
      num_string = num_string + ' and '
    end
  end

  write = left/10 # How many tens left?
  left = left - write*10 # Subtract off those tens.

  if write > 0
    if ((write == 1) and (left > 0))
      num_string = num_string + teenagers[left-1]
      left = 0
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

num_at_start = 1000
num_now = num_at_start

while num_now > 1
  puts english_number(num_now).capitalize + " bottles of beer on the wall, " + english_number(num_now) + " bottles of beer!"
  num_now -= 1
  puts "Take one down, pass it around, " + english_number(num_now) + " bottles of beer on the wall!"
end

puts num_now " bottle of beer on the wall" + num_now + " bottle of beer!"
puts "Take one down, pass it around, no more bottles of beer on the wall!"
