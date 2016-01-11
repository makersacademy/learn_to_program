def english_number number
  if number < 0
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

  num_string = ''
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
              ['sexdecillion',      51],
              ['septendecillion',   54],
              ['octodecillion',     57],
              ['novemdecillion',    60],
              ['vigintillion',      63],
              ['googol',           100]]

    left = number

    while zillions.length > 0
      zil_pair = zillions.pop
      zil_name =       zil_pair[0]
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

  write = left/10
  left = left - write*10

if write > 0
  if ((write == 1) and (left > 0))
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
end

#      set1 = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]

#      set2 = ["", "", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

#      set3 = ["hundred", "thousand", "million", "billion", "trillion"]

#      trillions = ((number % 1000000000000000) / 1000000000000)
#      billions = ((number % 1000000000000) / 1000000000)
#      millions = ((number % 1000000000) / 1000000)
#      thousands = ((number % 1000000) / 1000)
#      hundreds = ((number % 1000) / 100)
#      tens = ((number % 100) / 10)
#      ones = number % 10
#      string = ""

# print set1[thousands]

#      if number == 0
#        return "Zero"
#      elsif number < 1
#        return "Please enter a positive integer"
#      end


      #string += set1[] + " " + set3[5] if thousands >= 1
#      string += set1[trillions] + " " + set3[4] if trillions >= 1
#      string += set1[billions] + " " + set3[3] if billions >= 1
#      string += set1[millions] + " " + set3[2] if millions >= 1
#      string += set1[thousands] + " " + set3[1] if thousands >= 1
#      string += set1[hundreds] + " " + set3[0] if hundreds >= 1
#      string += " " if number > 99 && (tens > 0 || ones > 0)
#      string += set2[tens] if ones == 0
#      string += set2[tens] + "-" if ones != 0 && ones > 19 && tens != 0
#      string += set1[tens*10+ones] if tens < 2
#      string += set1[ones] if ones != 0 && tens > 2
#      string.capitalize
# end

# puts english_number(9001)
# puts english_number(100)
# puts english_number(534)
# puts english_number(0.670000)
# puts english_number(3)
# puts english_number(0)
# puts english_number(45)
# puts english_number(213)
# puts english_number(19)
# puts english_number(154)
# puts english_number(154000)
# puts english_number(4589754)
