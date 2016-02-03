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




# begin my solution

# def english_number number
#   ones = %w(zero one two three four five six seven eight nine)
#   teens = %w(ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
#   tens = %w(ten twenty thirty forty fifty sixty seventy eighty ninety)
#   beyond = %w(thousand million billion trillion)
#
#
#   left = number
#   @string = ''
#
#   if number == 0
#     return "zero"
#   end
#
#   if left / 1000 > 0
#     p thousands = left / 1000
#     p left = left - thousands * 1000
#     @string <<  ones[thousands] + " thousand "
#   end
#
#   if left > 99
#     huneds = left / 100
#     left = left - 100 * huneds
#     @string << ones[huneds] + " hundred"
#     @string << ' ' if left > 0
#   end
#
#   if left > 19
#     tensplace = left/10
#     left = left - 10 * tensplace
#     @string << tens[tensplace - 1]
#     @string << "-" if left > 0
#   end
#
#   if left < 20 && left > 9
#     @string << teens[left % 10]
#     left = 0
#   end
#
#   if left > 100
#     @string << " "
#   end
#
#   @string << ones[left] unless left == 0
#
#   @string
# end




# def doer (number, param, letter)
#   left = number
#   if number / param > 0
#     amount_of = number / param
#     left = number - amount_of * param
#     @string << english_number(amount_of) + letter
#     left
#    end
# end
#
#
# doer(number, 100000, "million")
# doer(left, 1000, " thousand ")
