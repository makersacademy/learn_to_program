

def english_number number
if number < 0 # No negative numbers.
return 'Please enter a number that isn\'t negative.'
end
if number == 0
return 'zero'
end
# No more special cases! No more returns!
num_string = '' # This is the string we will return.
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

left = number
while zillions.length > 0
  zil_pair = zillions.pop
  zil_base = 10**zil_pair[1]
  zil_name = zil_pair[0]


write = left/zil_base # How many hundreds left?
left = left - write*zil_base # Subtract off those hundreds.

    if write > 0
      # Now here's the recursion:
      prefix = english_number write
      num_string = num_string + prefix + ' ' + zil_name

        if left > 0
        # So we don't write 'two hundredfifty-one'...
        num_string = num_string + ' '
        end
    end
  end

write = left/10 # How many tens left?
left = left - write*10 # Subtract off those tens.

  if write > 0
    if ((write == 1) and (left > 0))
      # Since we can't write "tenty-two" instead of
      # "twelve", we
      num_string = num_string + teenagers[left-1]
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
puts english_number(10000000000000000000034534534504000345353453453450345000000)
