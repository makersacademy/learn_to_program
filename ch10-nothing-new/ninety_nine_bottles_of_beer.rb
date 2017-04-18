def bottles_of beers
  while true


    if beers == 0

    puts 'No more bottles of beer on the wall, no more bottles of beer.'
    puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'
    puts ''
      break
    else
    puts '' + english_number(beers) + ' bottles of beer on the wall, ' + english_number(beers) + ' bottles of beer.'
    puts 'Take one down and pass it around, ' + english_number(beers-1) + ' bottles of beer on the wall.'
    puts ''
    beers -= 1
    end
  end
end

def english_number number

  if number < 0
    return 'Please enter a number that isn\'t negative.'
  end

  if number == 0
    return 'zero'
  end

num_string = ''

ones_place = ['one', 'two', 'three','four','five','six','seven','eight','nine']
tens_place = ['ten', 'twenty', 'thirty','fourty','fifty','sixty','seventy','eighty','ninety']
teenagers = ['eleven', 'twelve', 'thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen']


left = number

write = left/1000000000
left = left - write*1000000000
  if write > 0
  million = english_number write
  num_string = num_string + million + ' billion'

    if left > 0
    num_string = num_string + ' '
    end

  end

write = left/1000000
left = left - write*1000000
  if write > 0
  million = english_number write
  num_string = num_string + million + ' million'

    if left > 0
    num_string = num_string + ' '
    end

  end

write = left/1000
left = left - write*1000
  if write > 0
  thousand = english_number write
  num_string = num_string + thousand + ' thousand'

    if left > 0
    num_string = num_string + ' '
    end

  end

write = left/100
left = left - write*100

  if write > 0
  hundreds = english_number write
  num_string = num_string + hundreds + ' hundred'

    if left > 0
    num_string = num_string + ' '
    end

  end

write = left/10
left = left - write *10

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

write = left
left = 0

  if write > 0
  num_string = num_string + ones_place[write-1]
  end

num_string

end
