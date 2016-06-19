#!/usr/bin/env ruby
def english_number number
  return 'Please enter a number that isn\'t negative.' if number < 0
  return 'zero' if number == 0

  num_string = ''

  ones_place = ['one',       'two',      'three',
                'four',      'five',     'six',
                'seven',     'eight',    'nine']

  tens_place = ['ten',       'twenty',   'thirty',
                'forty',     'fifty',    'sixty',
                'seventy',   'eighty',   'ninety']

  teenagers  = ['eleven',    'twelve',   'thirteen',
                'fourteen',  'fifteen',  'sixteen',
                'seventeen', 'eighteen', 'nineteen']


  #trillion:
  left  = number
  write = number / 1_000_000_000_000
  left  = number % 1_000_000_000_000
  if write > 0
     trillions = english_number(write)
    num_string = num_string + trillions + ' trillion'
    if left > 0
      num_string = num_string + ' '
    end

  end



  #billions:
  write = left / 1_000_000_000
  left  = left % 1_000_000_000
  if write > 0
    billions = english_number(write)
    num_string = num_string + billions + ' billion'

    if left > 0
      num_string = num_string + ' '
    end

  end


  #millions:
  write = left / 1_000_000
  left  = left % 1_000_000
  if write > 0
    millions = english_number(write)
    num_string = num_string + millions + ' million'

    if left > 0
      num_string = num_string + ' '
    end

  end


  #thousands:
  write = left / 1_000
  left  = left % 1_000
  if write > 0
    thousands = english_number(write)
    num_string = num_string + thousands + ' thousand'

    if left > 0
      num_string = num_string + ' '
    end

  end





  #hundreds:
  write = left / 100
  left  = left % 100

  if write > 0
    hundreds = english_number(write)
    num_string = num_string + hundreds + ' hundred'

    if left > 0
      num_string = num_string + ' '
    end

  end


  #tens
  write = left  / 10
  left  = left % 10

  if write > 0

    if (write == 1) && (left > 0)
      num_string = num_string + teenagers[left-1]
      left = 0
    else
      num_string = num_string + tens_place[write-1]

      if left > 0
        num_string = num_string + '-'
      end
    end
  end


  #ones:

  write = left
  left = 0

  if write > 0
    num_string = num_string + ones_place[write-1]
  end

num_string

end

puts english_number 3211
