def english_number number


  if number < 0
    return "Please enter a number that isn't negative."
  end

  if number == 0
    return 'zero'
  end

  num_string = ''    #string that is going to be returned

  # left = how much of the number we still have to write out
  # 'write' is the part we are writing out right now.

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


  #left is how much of the number we have left to write out.
  #write is the part we're writing now.

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

  write = left/10                 # EXPLAIN
  left = left - write*10

  if write > 0
    if ((write == 1) and (left > 0))
      #cant write tenty two instead of twelve
      num_string = num_string + teenagers[left-1]
      #-1 because arrays start at 0, so teenagers[3] is fourteen not thirteen
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


puts english_number(0)
puts english_number(11)
puts english_number(45)
puts english_number(1)
puts english_number(56)
puts english_number(99)
puts english_number(100)
puts english_number(3214)
puts english_number(234)
puts english_number(903849038)
puts english_number(1000000000000)
puts english_number(20934723894714798374932875109285410958)
