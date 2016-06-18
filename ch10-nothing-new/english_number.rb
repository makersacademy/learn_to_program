def english_number number

  if number < 0
    return 'Please enter a number that isn\'t negative.'
  end

  if number == 0
    return 'zero'
  end

numString = ''

  onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']


zillions = [['hundred', 2],
['thousand', 3],
['million', 6],
['billion', 9],
['trillion', 12],
['quadrillion', 15],
['quintillion',	18],
['sextillion', 21],
['septillion', 24],
['octillion', 27],
['nonillion',	30],
['decillion',	33],
['undecillion', 36],
['duodecillion',39],
['tredecillion', 42],
['quattuordecillion', 45],
['quindecillion', 48]
]

left = number

if number > 99

while zillions.size > 0
zil_check = zillions.pop
zil_name = zil_check[0]
base = 10 ** zil_check[1]
write = left/base
left = left - write * base

if write > 0
prefix = english_number write
numString = numString + prefix + ' ' + zil_name

if left > 0
 numString = numString + ' '
 end
 end
end

end

write = left/10
  left  = left - write*10

  if write > 0
    if ((write == 1) and (left > 0))

      numString = numString + teenagers[left-1]

      left = 0
    else
      numString = numString + tensPlace[write-1]

    end

    if left > 0

      numString = numString + '-'
    end
  end

  write = left
  left  = 0

  if write > 0
    numString = numString + onesPlace[write-1]

  end


  numString
end
