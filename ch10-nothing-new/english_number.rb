def english_number number

  # Accept positive numbers only
  return 'Please enter a number that isn\'t negative.' if number < 0
  
  return 'zero' if number == 0

  # The string to eventually return
  num_string = ''

  ones =  [ 'one',        'two',      'three',
            'four',       'five',     'six',
            'seven',      'eight',    'nine']

  tens =  [ 'ten',        'twenty',   'thirty',
            'forty',      'fifty',    'sixty',
            'seventy',    'eighty',   'ninety']

  teens = [ 'eleven',     'twelve',   'thirteen',
            'fourteen',   'fifteen',  'sixteen',
            'seventeen',  'eighteen', 'nineteen']

  units = [ ['hundred', 2],       ['thousand', 3],
            ['million', 6],       ['billion', 9],
            ['trillion', 12],     ['quadrillion', 15],
            ['quintillion', 18],  ['sextillion', 21],
            ['septillion', 24],   ['octillion', 27],
            ['nonillion', 30],    ['decillion', 33],
            ['undecillion', 36],  ['duodecillion', 39],
            ['tredecillion', 42], ['quattuordecillion', 45],
            ['quindecillion', 48] ]

  # "left" is how much of the number is left to write out
  # "write" is the part we are writing out now
  left = number
  write = 0

  while units.length > 0

    unit = units.pop
    write = left / (10**unit[1])
    left -= write * 10**unit[1]

    if write > 0
      num_string << "#{english_number(write)} #{unit[0]}"
      if left > 0
        num_string << " "
      end
    end

  end
 

  write = left / 10   # number of tens to write
  left -= write * 10  # remove the written tens

  if write > 0
  
    if write == 1 && left > 0
      num_string << teens[left - 1]
      left = 0
    else
      num_string << tens[write - 1]
      if left > 0
        num_string << '-'
      end
    end

  end  


  if left > 0
    num_string << "#{ones[left - 1]}"
    left = 0
  end

  num_string

end
