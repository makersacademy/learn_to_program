def english_number number
  if number < 0 # No negative numbers.
return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end
# No more special cases! No more returns!
  num_string = '' # This is the string we will return.

  ones_place = ['one',       'two',      'three',
                'four',      'five',     'six',
                'seven',     'eight',    'nine']
  tens_place = ['ten',       'twenty',   'thirty',
                'forty',     'fifty',    'sixty',
                'seventy',   'eighty',   'ninety']
  teenagers  = ['eleven',    'twelve',   'thirteen','fourteen', 'fifteen',  'sixteen','seventeen', 'eighteen', 'nineteen']



# "left" is how much of the number
  #         we still have left to write out.
  #  "write" is the part we are
  #          writing out right now.
  #  write and left...get it?  :)


zillions = [['quadrillion',       15],
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
            ['sexdecillion',      51],
            ['septendecillion',   54],
            ['octodecillion',     57],
            ['novemdecillion',    60],
            ['vigintillion',      63],
            ['googol',           100]]
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



write = left/1000000000000 # How many trillions left?
left = left - write*1000000000000

  if write > 0

    trillions = english_number write
    num_string = num_string + trillions + ' trillion'
    if left > 0
    num_string = num_string + ' '
    end
  end


write = left/1000000000 # How many billions left?
left = left - write*1000000000

  if write > 0

    billions = english_number write
    num_string = num_string + billions + ' billion'
    if left > 0
    num_string = num_string + ' '
    end
  end

write = left/1000000 # How many millions left?
left = left - write*1000000

  if write > 0

    millions = english_number write
    num_string = num_string + millions + ' million'
    if left > 0
    num_string = num_string + ' '
    end
  end



write = left/1000 # How many thousands left?
left = left - write*1000

  if write > 0

    thousands = english_number write
    num_string = num_string + thousands + ' thousand'
    if left > 0
    num_string = num_string + ' '
    end
  end

  write = left/100 # How many hundreds left?
  left = left - write*100 # Subtract off those hundreds.
  if write > 0
  # Now here's the recursion:
    hundreds = english_number write
    num_string = num_string + hundreds + ' hundred'
    if left > 0
      #  So we don't write 'two hundredfifty-one'...
        num_string = num_string + ' '
      end
  end

  write = left / 10 # How many tens left?
  left = left - write*10 # Subtract off those tens.
  if write > 0
    if ((write == 1) and (left > 0))
      #  Since we can't write "tenty-two" instead of
      #  "twelve", we have to make a special exception
      #  for these.
    num_string = num_string + teenagers[left-1]
# The "-1" is because teenagers[3] is
# 'fourteen', not 'thirteen'.
# Since we took care of the digit in the
# ones place already, we have nothing left to write.
  left = 0
  else
      num_string = num_string + tens_place[write-1]
      #  The "-1" is because tens_place[3] is
# 'forty', not 'thirty'.
  end
    if left > 0
# So we don't write 'sixtyfour'...
  num_string = num_string + '-'
    end
  end
  write = left
  left = 0
  # Subtract off those ones.
  if write > 0
    num_string = num_string + ones_place[write-1] # The "-1" is because ones_place[3] is# 'four', not 'three'.
  end
  num_string
end

start_num = 10 #Starting number for the song

num_bot = proc { |n| "#{english_number n} bottle#{n == 1 ? ' ' : 's'}"}
# For number use method english_number to turn the number into written english. If the number of bottles == 1 do "bottle" if not do "bottles"
start_num.downto(2) do |num|
  puts "#{num_bot[num]} of beer on the wall, #{num_bot[num]} of beer!".capitalize
  puts "Take one down, pass it around, #{num_bot[num-1]} of beer on the wall!"
end
puts "#{num_bot[n1]} of beer on the wall, #{num_bot[1]} of beer!". capitalize
puts "Take one down, pass it around, no more bottles of beer one the wall!"