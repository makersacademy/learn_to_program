def english_number number
  if number < 0
    return 'Please enter a positive number'
  end
  if number == 0
    return 'zero'
  end
num = ''
  ones = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
  tens = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  teens = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']

  zillions = [['hundred', 2],
              ['thousand', 3],
              ['million', 6],
              ['billion', 9],
              ['trillion', 12],
              ['quadrillion', 15],
              ['quintillion',18],
              ['sextillion',21],
              ['septillion',24],
              ['octillion',27],
              ['nonillion',30],
              ['decillion',33],
              ['undecillion',36],
              ['duodecillion',39],
              ['tredecillion',42],
              ['quattuordecillion',45],
              ['quindecillion',48],
              ['sexdecillion',51],
              ['septendecillion',54],
              ['octodecillion',57],
              ['novemdecillion',60],
              ['vigintillion',63],
              ['googol',100]]


  first  = number
while zillions.length > 0
  zil_pair = zillions.pop
  zil_name = zil_pair[0]
  zil_base = 10 ** zil_pair[1]
  second = first/zil_base
  first = first - second*zil_base

  if second > 0
    prefix = english_number second
    num = num + prefix + ' ' + zil_name
    if first > 0
    num = num + ' '
  end
end
end


second = first/10
first  = first - second*10

  if second > 0
    if ((second == 1) and (first > 0))
      num = num + teens[first-1]
      first = 0
    else
      num = num + tens[second-1]
    end
    if first > 0
      num = num + '-'
    end
  end
  second = first
  first  = 0
  if second > 0
    num = num + ones[second-1]
  end


  num
end
