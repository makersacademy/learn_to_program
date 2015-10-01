def english_number(number)
  return 'Please enter a number that isn\'t negative.' if number < 0
  return 'zero' if number == 0
  num_string = ''
  ones_place = %w(one two three
                  four five six
                  seven eight nine)
  tens_place = %w(ten twenty thirty
                  forty fifty sixty
                  seventy eighty ninety)
  teenagers  = %w(eleven twelve thirteen
                  fourteen fifteen sixteen
                  seventeen eighteen nineteen)
  three_digits = { 'thousand' => 1000,
                   'million' => 1_000_000,
                   'billion' => 10**9,
                   'trillion' => 10**12,
                   'quadrillion' => 10**15,
                   'quintillion' => 10**18,
                   'sextillion' => 10**21,
                   'septillion' => 10**24,
                   'octillion' => 10**27,
                   'nonillion' => 10**30,
                   'decillion' => 10**33,
                   'undecillion' => 10**36,
                   'duodecillion' => 10**39,
                   'tredecillion' => 10**42,
                   'quattuordecillion' => 10**45,
                   'quindecillion' => 10**48 }
  left = number
  three_digits.reverse_each do |key, value|
    write = left / value
    left -= write * value
    if write > 0
      llions = english_number write
      num_string = num_string + llions + ' ' + key
      num_string += ' ' if left > 0
    end
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

  num_string += ones_place[write - 1] if write > 0

  num_string
end

def bottles_song(num)

  while num > 1
    string = english_number(num)
    puts string + ' bottles of beer on the wall, ' + string + ' bottles of beer.'
    puts 'Take one down and pass it around, ' + english_number(num-1) + ' bottles of beer on the wall.'
    puts
    num -= 1
  end

  if num == 1
    puts 'One bottle of beer on the wall, one bottle of beer.'
    puts 'Take one down and pass it around, no more bottles of beer on the wall.'
    puts
  end

  puts 'No more bottles of beer on the wall, no more bottles of beer.'
  puts 'Go to the store and buy some more, ninety-nine bottles of beer on the wall.'

end

bottles_song(9999)
