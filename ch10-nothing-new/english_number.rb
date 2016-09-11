def english_number number
  if number < 0 # No negative numbers.
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

  num_string = ''

  onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
              'sixteen', 'seventeen', 'eighteen', 'nineteen']

  zillions = [['hundred',            2],
              ['thousand',           3],
              ['million',            6],
              ['billion',            9],
              ['trillion' ,         12],
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
              ['quindecillion',       48],
              ['sextillion',        51],
              ['septendecillion',   54],
              ['octodecillion',     57],
              ['novemdecillion',    60],
              ['vigintillion',      63],
              ['googol',           100]]

=begin
"left" is how much of the number  we still have left
to write out.
"write" is the part we are writing out right now.
=end
  left = number
  while zillions.length > 0
    zil_pair = zillions.pop
    zil_name = zil_pair[0]
    zil_base = 10 ** zil_pair[1]

    write = left/zil_base # How many zillions left?
    left = left - write * zil_base # Subtract off those zillions

    if write > 0
      # Here's the recursion
      prefix = english_number write

      num_string = num_string + prefix + ' ' + zil_name

      if left > 0
        # So we don't write 'two billionfifty-one'...
        num_string = num_string + ' '
      end
    end
  end

  write = left/10          # How many tens left?
  left = left - write * 10 # Subtract the tens

  if write > 0
    if ((write == 1 ) and (left >0))

      num_string = num_string + teenagers[left-1]
      # The "-1" is because teenagers [3] is fourteen not thirteen
      left = 0
    else
      num_string = num_string + tensPlace[write -1]
    end

    if left > 0
      # So we don't write thirtytwo!!
      num_string = num_string + '-'
    end
  end

  write = left
  left = 0

  if write > 0
    num_string = num_string + onesPlace[write-1]
  end

  num_string
end

puts english_number(  15)
puts english_number(  123145)
puts english_number( 234324)
puts english_number(  12)
puts english_number(  23523)
puts english_number(  23426)
