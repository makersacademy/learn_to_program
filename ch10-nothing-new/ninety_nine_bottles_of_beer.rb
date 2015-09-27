num_at_start = 5
num_now = num_at_start

while num_now > 2
  puts english_number(num_now).capitalize + ' bottles of beer on the wall, ' +
    english_number(num_now) + ' bottles of beer!'

  num_now = num_now - 1
  puts 'Take one down, pass it around, ' +
    english_number(num_now) + ' bottles of beer on the wall!'

end
