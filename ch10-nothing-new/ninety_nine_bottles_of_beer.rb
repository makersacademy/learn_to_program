def english_number number
  if number < 0
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

  num_string = ''
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
['thousand', 3]]
left = number
while zillions.length > 0
  zil_pair = zillions.pop
  zil_name = zil_pair[0]
  zil_base = 10 ** zil_pair[1]
  write = left/zil_base
  left = left - write*zil_base
  if write > 0

    prefix = english_number write
    num_string = num_string + prefix + ' ' + zil_name
    if left > 0
    num_string = num_string + ' '
    end
  end
end
write = left/10
left = left - write*10
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
num_at_start = 5
num_now = num_at_start
while num_now > 2
puts english_number(num_now).capitalize + ' bottles of beer on the wall, ' +
english_number(num_now) + ' bottles of beer!'
num_now = num_now - 1
puts 'Take one down, pass it around, ' +
english_number(num_now) + ' bottles of beer on the wall!'
end
puts "Two bottles of beer on the wall, two bottles of beer!"
puts "Take one down, pass it around, one bottle of beer on the wall!"
puts "One bottle of beer on the wall, one bottle of beer!"
puts "Take one down, pass it around, no more bottles of beer on the wall!"
