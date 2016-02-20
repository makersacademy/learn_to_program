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

        big_ones = [['hundred', 2],
                    ['thousand', 3],
                    ['million', 6],
                    ['billion', 9],
                    ['trillion', 12],
                    ['quadrillion', 15],
                    ['quintillion', 18],
                    ['sextillion', 21],
                    ['septillion', 24],
                    ['octillion', 27],
                    ['nonillion', 30],
                    ['decillion', 33],
                    ['undecillion', 36],
                    ['duodecillion', 39],
                    ['tredecillion', 42],
                    ['quattuordecillion', 45],
                    ['quindecillion', 48],
                    ['sexdecillion', 51],
                    ['septendecillion', 54],
                    ['octodecillion', 57],
                    ['novemdecillion', 60],
                    ['vigintillion', 63],
                    ['googol', 100]]

# "left" is how much of the number we still have left to write out.
# "write" is the part we are writing out right now.

left = number

while big_ones.length > 0
  big_ones_pair = big_ones.pop
  big_ones_name = big_ones_pair[0]
  big_ones_base = 10 ** big_ones_pair[1]
  write = left/big_ones_base
  left = left - write*big_ones_base


  if write > 0
    prefix = english_number write
    num_string = num_string + prefix + ' ' + big_ones_name

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

def ninety_nine_bottles_of_beer(num)
  x = num
    until x == 0 do
        if x == 1
          bottle = english_number(x)
          less_bottle = num_conversion(x - 1)
          puts "#{bottle.capitalize} bottle of beer on the wall,"
          puts "#{bottle.capitalize} bottle of beer,"
          puts "Take one down, pass it around,"
          puts "#{less_bottle.capitalize} bottles of beer on the wall."
          x = x - 1
        elsif x == 2
          bottle = english_number(x)
          less_bottle = num_conversion(x - 1)
          puts "#{bottle.capitalize} bottles of beer on the wall,"
          puts "#{bottle.capitalize} bottles of beer,"
          puts "Take one down, pass it around,"
          puts "#{less_bottle.capitalize} bottle of beer on the wall."
          x = x - 1
        else
          bottle = english_number(x)
          less_bottle = num_conversion(x - 1)
          puts "#{bottle.capitalize} bottles of beer on the wall,"
          puts "#{bottle.capitalize} bottles of beer,"
          puts "Take one down, pass it around,"
          puts "#{less_bottle.capitalize} bottles of beer on the wall."
          x = x - 1
        end
    end
end

    def print_song
      ninety_nine_bottles_of_beer(num) #not sure this would work in reality, need to initialize & set global variables etc.
    end

# Chris Pine 'how you could solve it' solution:
# num_at_start = 5 # change to 9999 if you want
# num_now = num_at_start
# while num_now > 2
#   puts english_number(num_now).capitalize + ' bottles of beer on the wall, ' +
#     english_number(num_now) + ' bottles of beer!'
#   num_now = num_now - 1
#   puts 'Take one down, pass it around, ' +
#     english_number(num_now) + ' bottles of beer on the wall!'
# end
