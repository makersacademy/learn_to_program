def english_number number
  if number < 0
    return 'Please enter a number that isn\'t negative'
  elsif number == 0
    return 'zero'
  end

  num_string = ''

  ones_place = ['one',      'two',      'three',
                'four',     'five',     'six',
                'seven',    'eight',    'nine']
  tens_place = ['ten',      'twenty',   'thirty',
                'forty',   'fifty',    'sixty',
                'seventy',  'eighty',   'ninety']
  teenagers  = ['eleven',   'twelve',   'thirteen',
                'fourteen', 'fifteen',  'sixteen',
                'seventeen','eighteen', 'ninteen']

  zillions = [['hundred', 2],            ['thousand', 3],        ['million', 6],
             ['billion', 9],            ['trillion', 12],       ['quadrillion', 15],
             ['quintillion', 18],       ['sextillion', 21],     ['septillion', 24],
             ['octillion', 27],         ['nonillion', 30],      ['decillion', 33],
             ['undecillion', 36],       ['duodecillion', 39],   ['tredecillion', 42],
             ['quattuordecillion', 45], ['quindecillion', 48],  ['sexdecillion', 51],
             ['septendecillion', 54],   ['octodecillion', 57],  ['novemdecillion', 60],
             ['vigintillion', 63],      ['googol', 100]]

  left = number # number that was submitted

  while zillions.length > 0 # when there is at least one element in greater array
    zil_pair = zillions.pop # returns the last element from array [name, base]
    zil_name = zil_pair[0] # assigns variable to the name
    zil_base = 10 ** zil_pair[1] # assigns variable to the value
    write = left/zil_base # submitted number / zillion number => gives multiple
    left = left - write*zil_base # remainder after the big number is removed

    if write > 0
      prefix = english_number write #recursion loops it thorugh 'while' again
      num_string = num_string + prefix + ' ' + zil_name

      if left > 0
        # So we don't write 'two billionfifty-one'...
        num_string = num_string + ' '
      end
    end
  end

  write = left/10 # 'left' from 'while' loop - determines how many 10s
  left = left - write*10 # Subtract off those tens.

  if write > 0 # if there are any 10s
    if ((write == 1) and (left > 0)) # exception for teenagers
      num_string = num_string + teenagers[left-1] # index starts at 0
      left = 0 # teenagers take care of the ones place
    else
      num_string = num_string + tens_place[write-1] # index starts at 0
    end

    if left > 0
      num_string = num_string + '-' # adds hyphen
    end
  end

  write = left # How many ones left to write out?
  left = 0 # Subtract off those ones.

  if write > 0
    num_string = num_string + ones_place[write-1] # index starts at 0
  end

  num_string # number name put together
end

count = 99
count_now = count
while count_now > 2
	puts "#{english_number(count_now).capitalize} bottles of beer on the wall, #{english_number(count_now)} bottles of beer."
  puts "Take one down, pass it around, #{english_number(count_now - 1)} bottles of beer on the wall..."
	count_now -= 1
end

puts "Two bottles of beer on the wall, two bottles of beer."
puts "Take one down, pass it around, one bottle of beer on the wall..."
puts "One bottle of beer on the wall, one bottle of beer."
puts "Take one down, pass it around, no more bottles of beer on the wall!"
