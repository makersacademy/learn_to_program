def english_number number
  if number < 0  # No negative numbers.
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

  num_string = ''  # This is the string we will return.

  ones_place = ['one',       'two',      'three',
                'four',      'five',     'six',
                'seven',     'eight',    'nine']
  tens_place = ['ten',       'twenty',   'thirty',
                'forty',     'fifty',    'sixty',
                'seventy',   'eighty',   'ninety']
  teenagers  = ['eleven',    'twelve',   'thirteen',
                'fourteen',  'fifteen',  'sixteen',
                'seventeen', 'eighteen', 'nineteen']
  zillions = [['hundred',            2],
              ['thousand',           3],
              ['million',            6],
              ['billion',            9],
              ['trillion',          12],
              ['quadrillion',       15],
              ['quintillion',       18],
              ['sextillion',        21],
              ['septillion',        24],
              ['octillion',         27],
              ['nonillion',         30],
              ['decillion',         33],
              ['undecillion',       36],
              ['duodecillion',      39],
              ['tredecillion',      42],
              ['quattuordecillion', 45],
              ['quindecillion',     48],
              ['sexdecillion',      52],
              ['septendecillion',   55],
              ['octodecillion',     57],
              ['novemdecillion',    60],
              ['vigintillion',      63],
              ['googol',           100]]

  #  "left"  is how much of the number
  #          we still have left to write out.
  #  "write" is the part we are
  #          writing out right now.

  left  = number                            # i.o. left = 3211

  while zillions.length > 0                 # i.o. after N iterations =>  2 > 0
    zillions_pair = zillions.pop            # i.o. after N iterations =>  zillions_pair = ['thousand', 3]
    zillions_name = zillions_pair[0]        # i.o. zillions_name = 'thousand'
    zillions_base = 10 ** zillions_pair[1]  # i.o. zillions_base = 10 ** 3 = 1000

    write = left/zillions_base              # How many zillions left?        i.o. 3211 / 1000 = 3
    left = left - write*zillions_base       # Substract off those zillions.  i.o. 3211 - 3*1000 = 211

    if write > 0                            # 3 > 0
      # Now here's the recurtion:
      prefix = english_number write         # i.o. english_number 3 => 'three'

      num_string = num_string + prefix + ' ' + zillions_name  # i.o. '' + 'three' + ' ' + 'thousand'

      if left > 0                           # i.o. 211 > 0
        # So we don't write 'two billionfifty-one'...
        num_string = num_string + ' '       # 'three thousand' + ' '
      end
    end
  end

  write = left/10                           # How many tens left?
  left = left - write*10                    # Subtract off those tens.

  if write > 0
    if ((write == 1) and (left > 0))
      # Since we can't write "tenty-two"
      # Instead of "twelve", we have to
      # make a special exception for these.
      num_string = num_string + teenagers[left-1]
      # The "-1" is because teenagers[3] is
      # 'fourteen', not 'thirteen'.
      # Since we took care of the digit in the
      # ones place already, we have nothing left to write.
      left = 0
    else
      num_string = num_string + tens_place[write-1]
      # The "-1" is because one_place[3] is
      # 'forty' not 'thirty'
    end

    if left > 0
      # So we don't write 'sixtyfour'...
      num_string = num_string + '-'
    end
  end

  write = left  # How many ones left to write out?
  left = 0      # Subtract off those ones.

  if write > 0
    num_string = num_string + ones_place[write-1]
    # The "-1" is becaise one_place[3] is
    # 'four', not 'three'.
  end

  # Now we just return "num_string"...
  num_string
end

=begin
puts english_number(0)
puts english_number(9)
puts english_number(10)
puts english_number(11)
puts english_number(17)
puts english_number(32)
puts english_number(88)
puts english_number(99)
puts english_number(101)
puts english_number(234)
puts english_number(3211)
puts english_number(10311)
puts english_number(999999)
puts english_number(1500000)
puts english_number(1000000000000)
=end