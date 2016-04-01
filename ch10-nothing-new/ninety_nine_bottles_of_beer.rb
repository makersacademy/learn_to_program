require_relative 'english_number.rb'

  num = 9999
  while num > 2
    puts english_number(num).capitalize + ' bottles of beer on the wall, ' +
      english_number(num) + ' bottles of beer!'
    num = num - 1
    puts 'Take one down, pass it around, ' +
      english_number(num) + ' bottles of beer on the wall!'
  end
