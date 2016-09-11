def english_number number
  if number < 0
    return 'Please enter a positive number, thanks'
end
if number == 0
  return 'zero'
end

num_string = ''
ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
others = [['hundred', 100],
         ['thousand', 1000]]


 left = number

  while others.length > 0
    digit_and_place = others.pop
    digit = digit_and_place[0]
    place = digit_and_place[1]
    write = left/place
    left = left - write*place

    if write > 0
      prefix = english_number write
      num_string = num_string + prefix + ' ' + digit

      if left > 0
        num_string = num_string + ' '
      end
    end
  end

  write = left/10
  left = left - write*10

  if write > 0
    if ((write == 1)) and ((left > 0))
      num_string = num_string + teenagers[left-1]
   left = 0
  else
    num_string = num_string + tens_place[write-1]
  end
  if left > 0
    num_string = num_string + ' '
  end
end

write = left
left = 0

if write > 0
  num_string = num_string + ones_place[write-1]
end
num_string
end

start = 9999
num = start

while num > 2
  puts english_number(num).capitalize + ' ' + 'bottles of beer on the wall, ' + english_number(num) + ' bottles of beer!'
  num = num - 1
  puts 'Take one down, pass it around, ' +
  english_number(num) + ' bottles of beer on the wall!'
end

puts "two bottles of beer on the wall, two bottles of beer!"
puts "Take one down, pass it around, one bottle of beer on the wall!"
puts "one bottle of beer on the wall, one bottle of beer!"
puts "Take one down, pass it around, no more bottles of beer on the wall"
