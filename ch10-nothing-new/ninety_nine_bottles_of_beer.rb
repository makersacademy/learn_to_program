# english_number as above, plus this:
def ninety_nine_bottles(start)
  while start > 2
    puts english_number(start).capitalize + ' bottles of beer on the wall, ' + english_number(start) + ' bottles of beer!'
    start -= 1
    puts 'Take one down, pass it around, ' + english_number(start) + ' bottles of beer on the wall!'
  end
end

def english_number(number)
  return 'Please enter a number that isn\'t negative.' if number < 0
  return 'zero' if number == 0

  num_string = ''
  ones_place = %w(one two three four five six seven eight nine)
  tens_place = %w(ten twenty thirty forty fifty sixty seventy eighty ninety)
  teenagers = %w(eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
  powers_of_ten = {
    (10**63) => 'vigintillion',
    (10**60) => 'novemdecillion',
    (10**57) => 'octodeceillion',
    (10**54) => 'septendecillion',
    (10**51) => 'sexdecillion',
    (10**48) => 'quindecillion',
    (10**45) => 'quattuordecillion',
    (10**42) => 'tredecillion',
    (10**39) => 'duodecillion',
    (10**36) => 'undecillion',
    (10**33) => 'decillion',
    (10**30) => 'nonillion',
    (10**27) => 'octillion',
    (10**24) => 'septillion',
    (10**21) => 'sextillion',
    (10**18) => 'quintillion',
    (10**15) => 'quadrillion',
    (10**12) => 'trillion',
    (10**9) => 'billion',
    1_000_000 => 'million',
    1000 => 'thousand'
  }
  left = number
  powers_of_ten.each do |k, v|
    write = left / k
    left -= write * k
    num_string << "#{english_number(write)} #{v}" if write > 0
    num_string << ' ' if left > 0 && write > 0
  end

  write = left / 100
  left -= write * 100

  if write > 0
    hundreds = english_number write
    num_string = num_string + hundreds + ' hundred'
    num_string += ' ' if left > 0
  end

  write = left / 10
  left -= write * 10

  if write > 0
    if (write == 1) && (left > 0)
      num_string += teenagers[left - 1]
      left = 0
    else
      num_string += tens_place[write - 1]
    end
    num_string += '-' if left > 0
  end
  write = left
  left = 0
  num_string += ones_place[write - 1] if write > 0
  num_string
end
