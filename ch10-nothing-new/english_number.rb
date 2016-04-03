def english_number number
  return 'zero' if number == 0

  result = ''

  ones_place = ['one', 'two', 'three',
                'four', 'five', 'six',
                'seven', 'eight', 'nine']

  tens_place = ['ten', 'twenty', 'thirty',
                'forty', 'fifty', 'sixty',
                'seventy', 'eighty', 'ninety']


  teenagers = ['eleven', 'twelve', 'thirteen',
               'fourteen', 'fifteen', 'sixteen',
               'seventeen', 'eighteen', 'nineteen']

  zillions = [['hundred' , 2],
              ['thousand' , 3],
              ['million' , 6],
              ['billion' , 9],
              ['trillion' , 12],
              ['quadrillion' , 15],
              ['quintillion' , 18],
              ['sextillion' , 21],
              ['septillion' , 24],
              ['octillion' , 27],
              ['nonillion' , 30],
              ['decillion' , 33],
              ['undecillion' , 36],
              ['duodecillion' , 39],
              ['tredecillion' , 42],
              ['quattuordecillion' , 45],
              ['quindecillion' , 48],
              ['sexdecillion' , 51],
              ['septendecillion' , 54],
              ['octodecillion' , 57],
              ['novemdecillion' , 60],
              ['vigintillion' , 63],
              ['googol' , 100]]

left = number

while zillions.length > 0
  zil_pair = zillions.pop
  zil_name =
  zil_pair[0]
  zil_base = 10 ** zil_pair[1]

  write = left / zil_base
  left -= write * zil_base

  if write > 0
    prefix = english_number write
    result = result + prefix + ' ' + zil_name
    if left > 0
      result = result + ' '
    end
  end
end

write = left / 100
left = left - write * 100
if write > 0
  hundreds = english_number write
  result = result + hundreds + ' hundred'

  if left > 0
  result = result + ' '
  end
end

write = left / 10
left -= write * 10

if write > 0
  if ((write == 1) and (left > 0))
  result = result + teenagers[left-1]
  left = 0
  else
  result = result + tens_place[write-1]
end

  if left > 0

  result = result + '-'
  end
end
write = left
left = 0

if write > 0
  result = result + ones_place[write-1]
end

  result
end
