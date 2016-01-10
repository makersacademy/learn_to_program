def english_number num
  return 'Please enter a number that isn\'t a negative.' if num < 0
  return 'Zero'                                          if num == 0

  num_string = ''

  ones =  ['One',       'Two',      'Three',
           'Four',      'Five',     'Six',
           'Seven',     'Eight',    'Nine']
  tens =  ['Ten',       'Twenty',   'Thirty',
           'Forty',     'Fifty',    'Sixty',
           'Seventy',   'Eighty',   'Ninety']
  teens = ['Eleven',    'Twelve',   'Thirteen',
           'Fourteen',  'Fifteen',  'Sixteen',
           'Seventeen', 'Eighteen', 'Nineteen']
  illis = [['Hundred',             2],
           ['Thousand',            3],
           ['Million',             6],
           ['Billion',             9],
           ['Trillion',           12],
           ['Quadrillion',        15],
           ['Quintillion',        18],
           ['Sextillion',         21],
           ['Septillion',         24],
           ['Octillion',          27],
           ['Noniliion',          30],
           ['Decillion',          33],
           ['Undecillion',        36],
           ['Duodecillion',       39],
           ['Tredecillion',       42],
           ['Quatturodecillion',  45],
           ['Quindecillion',      48],
           ['Sexdecillion',       51],
           ['Septendecillion',    54],
           ['Octodecillion',      57],
           ['Novemdecillion',     60],
           ['Vigintillion',       63],
           ['Googol',            100]]

  remaining = num

  while illis.length > 0
    zil_pair = illis.pop
    zil_name = zil_pair[0]
    zil_base = 10 ** zil_pair[1]
    write = remaining/zil_base
    remaining = remaining - write*zil_base

    if write > 0
      prefix = english_number write
      num_string = num_string + prefix + ' ' + zil_name

      if remaining > 0
        num_string = num_string + ' '
      end
    end
  end

  write = remaining / 10
  remaining = remaining - write * 10

  if write > 0
    if ((write == 1) && (remaining > 0))
      num_string = num_string + teens[remaining - 1]

      left = 0
    else
      num_string = num_string + tens[write - 1]
    end

    if remaining > 0
      num_string = num_string + '-'
    end
  end

  write = remaining
  remaining = 0

  if write > 0
    num_string = num_string + ones[write - 1]
  end

  num_string
end


puts english_number(3)
puts english_number(75)
puts english_number(472)
puts english_number(969)
puts english_number(333)
puts english_number(90921)
puts english_number(753625)
puts english_number(928374657483930493838748235979247982738479827589)
