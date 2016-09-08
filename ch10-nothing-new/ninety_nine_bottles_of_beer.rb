def english_number number
if number < 0
  'That\'s not right. Please enter a non-negative number.'
end
if number == 0
  return 'zero'
end

num_string = '' #string to be returned.

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

left = number

while zillions.length > 0
  zil_pair = zillions.pop       #defining the zillions and their zeros
  zil_name = zil_pair[0]
  zil_base = 10 ** zil_pair[1]
  write = left/zil_base
  left = left - write * zil_base

if write > 0
  prefix = english_number write          #  RECURSION
  num_string = num_string + prefix + ' ' + zil_name

if left > 0
  num_string = num_string + ' '
    end
  end
end

 write = left / 10
 left = left - write * 10

if write > 0
  if ((write == 1) and (left > 0))
      num_string = num_string + teenagers[left - 1]

      left = 0

  else num_string = num_string + tens_place[write - 1]
end

if left > 0
  num_string = num_string + '-'
end
end

write = left
left = 0

if write > 0
  num_string = num_string + ones_place[write - 1]
end

num_string
end

# This is where the bottles start

def bottles start_no

bottles = start_no

while bottles > 1
bottles -= 1

puts english_number(bottles) + ' bottles of beer on the wall'
puts english_number(bottles) + ' bottles of beer...'
puts 'take one down, pass it around...'
puts english_number(bottles-1).upcase + ' bottles of beer on the wall.'
  end
end

puts bottles(20)
