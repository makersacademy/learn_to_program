
# MY FAILED ATTEMPT
# def english_number number
#   if number < 0 # No negative numbers.
#     return 'Please enter a number that isn\'t negative.'
#   end
#   if number == 0
#     return 'zero'
#   end
#   num_string = '' # This is the string we will return.
#   ones_place = ['one',       'two',      'three',
#                 'four',      'five',     'six',
#                 'seven',     'eight',    'nine']
#   tens_place = ['ten',       'twenty',   'thirty',
#                 'forty',     'fifty',    'sixty',
#                 'seventy',   'eighty',   'ninety']
#   teenagers  = ['eleven',    'twelve',   'thirteen',
#                 'fourteen',  'fifteen',  'sixteen',
#                 'seventeen', 'eighteen', 'nineteen']
#   illions  = [' million', ' billion', ' trillion',
#               ' quadrillion', ' quintillion', 'sextillion',
#               ' septillion', ' octillion', ' nonillion',
#               ' decillion', ' undecillion', ' duodecillion',
#               ' tredecillion', ' quattuordecillion',  ' quindecillion',
#               ' sedecillion', ' septendecillion', ' octodecillion',
#               ' novemdecillion']
#
#
#
# # MILLION
# left = number
# write = left/10**6
# left = left - write*10**6
#
# if write > 0
# million = english_number write
# num_string = num_string + million + illions[million-1]
#
# if left > 0
# num_string = num_string + ' '
# end
# end
#
#   # THUSANDS
#   write = left/10**3
#   left = left - write*10**3
#
#   if write > 0
#     thusands = english_number write
#     num_string = num_string + thusands + ' thousand'
#
#     if left > 0
#       num_string = num_string + ' '
#
#     end
#   end
#
#   # HUNDREDS
#   write = left/100
#   left = left - write*100
#
#   if write > 0
#     hundreds = english_number write
#     num_string = num_string + hundreds + ' hundred'
#
#     if left > 0
#       num_string = num_string + ' '
#     end
#   end
#
#   # TENS
#   write = left/10
#   left = left - write*10
#
#   if write > 0
#     if ((write == 1) and (left > 0))
#       num_string = num_string + teenagers[left-1]
#       left = 0
#     else
#       num_string = num_string + tens_place[write-1]
#     end
#
#     if left > 0
#         num_string = num_string + '-'
#     end
#   end
#
#   # ONES
#   write = left
#
#   if write > 0
#     num_string = num_string + ones_place[write-1] # The "-1" is because ones_place[3] is
#   end
#
#   num_string
# end
#
def english_number number
  if number < 0
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end


  num_string = ''
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

  write = left/10 # How many tens left?
  left = left - write*10 # Subtract off those tens.

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
