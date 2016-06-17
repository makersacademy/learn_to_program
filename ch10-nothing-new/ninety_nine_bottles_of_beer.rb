def english_number number
  if number < 0
    return 'Please enter a positive number'
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

  left = number

  while zillions.length > 0 #as long as there is a single element left in the zillions array
    zil_pair = zillions.pop #take a zillion sub_array
    zil_name = zil_pair[0] #zillion word = zil_name
    zil_base = 10 ** zil_pair[1] #zillion value = zil_base
    write = left/zil_base # how many zillions left
    left = left - write*zil_base #subtract however many zillions there are left

    if write > 0
      prefix = english_number write # recursion - keeps it looping until there's no elements left in zillions array
      num_string = num_string + prefix + ' ' + zil_name

      if left > 0
        #keep a space
        num_string = num_string + ' '
      end
    end
  end

  write = left/10 #how many tens left
  left = left - write*10 #subtract the tens off

  if write > 0 #if there are any tens left from before
    if ((write == 1) and (left > 0))
      num_string = num_string + teenagers[left-1] #teenagers exception
      left = 0
    else
      num_string = num_string + tens_place[write-1]
    end

    if left > 0
      num_string = num_string + '-' #add dash
    end
  end

  write = left #how many ones left
  left = 0 #subtract the ones off

  if write > 0
    num_string = num_string + ones_place[write-1]
  end

  num_string #return the word
end




def beer_song num
  if num == 2
    puts "Two bottles of beer on the wall, two bottles of beer!"
    puts "Take one down and pass it around, one more bottle of beer on the wall!"
    puts "One bottle of beer on the wall, one bottle of beer!"
    puts "Take one down and pass it around, no more bottles of beer on the wall!"
  elsif num == 1
    puts "One bottle of beer on the wall, one bottle of beer!"
    puts "Take one down and pass it around, no more bottles of beer on the wall!"
  else
    puts english_number(num).capitalize + " bottles of beer on the wall, " + english_number(num) + " bottles of beer!"
    puts "Take one down and pass it around, " + english_number((num-1)) + " bottles of beer on the wall!"
    beer_song (num-1)
  end
end

beer_song 380
