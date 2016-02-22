# def english_number num     # my unfinihed code for english_number
#
#   num_ary = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
# 	tens_ary = ["zero", "ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
#
#   zillions = [['hundred', 2],
#               ['thousand', 3],
#               ['million', 6],
#               ['billion', 9],
#               ['trillion', 12],
#               ['quadrillion', 15],
#               ['quintillion', 18],
#               ['sextillion', 21],
#               ['septillion', 24],
#               ['octillion', 27],
#               ['nonillion', 30],
#               ['decillion', 33],
#               ['undecillion', 36],
#               ['duodecillion', 39],
#               ['tredecillion', 42],
#               ['quattuordecillion', 45],
#               ['quindecillion', 48],
#               ['sexdecillion', 51],
#               ['septendecillion', 54],
#               ['octodecillion', 57],
#               ['novemdecillion', 60],
#               ['vigintillion', 63],
#               ['googol', 100]]
#
#   def num_split(nums)  #divides a long number into 3 digit "verbal" sections
#     numtrim = nums.to_s.length % 3
#     numstring = nums.to_s
#       sub_nums = (numstring.slice!(0, numtrim).split)
#       if sub_nums.any? then sub_nums[0] = sub_nums[0].to_i end
#       numstring.scan(/.{1,3}/).each {|a| sub_nums << a.to_i}
#     return sub_nums
#   end
#
#   split_nums = num_split(num)
#   p split_nums
#
#   # reader for each three digit section of long number, now needs to be joined
#   # together with unfinished "zillions" counter below
#
#   i = -1
#   ary = split_nums[i].to_s.split("")
#   hundreds = ary[-3].to_i
#   tens = ary[-2].to_i
#   unit = ary[-1].to_i
#
#   if (ary.length > 1 && unit == 0)
#     last_dig = tens_ary[tens]
#   elsif (num >= 21) && (num < 100)
#     last_dig = tens_ary[tens]+"-"+num_ary[unit].downcase
#   elsif (num > 99)
#     last_dig = num_ary[hundreds]+" hundred "+tens_ary[tens]+"-"+num_ary[unit].downcase
#   else
#     last_dig = num_ary[num]
#   end
#
#   lead_dig = ""
#
#   # zeroes = (num.to_s.length)-1   ##original code for zillions calculation
#   #
#   #   zeroes == 3 ? lead_dig << num_ary[ary[0].to_i]+" "+zillions[1][0].to_s :
#   #   zeroes == 4 ? lead_dig << tens_ary[ary[0].to_i]+" "+zillions[1][0].to_s :
#   #   zeroes == 5 ? lead_dig << num_ary[ary[0].to_i]+" hundred "+zillions[1][0].to_s :
#   #
#   # zillions.map do|a,b|
#   #   if (b == zeroes) #|| ||
#   #     lead_dig << num_ary[ary[0].to_i]+" "+a
#   #   elsif (b+1 == zeroes)
#   #     lead_dig << tens_ary[ary[0].to_i]+" "+a
#   #   elsif  (b+2 == zeroes)
#   #     lead_dig << num_ary[ary[0].to_i]+" hundred "+a
#   #   end
#   # end
#
#   return (lead_dig + " " +last_dig)
#
# end
# # p english_number(434199) #=> 23,434,199)


# spent too many hours on this so used Chris Pine solution in order to move on:
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

  # "left" is how much of the number
  # we still have left to write out.
  # "write" is the part we are
  # writing out right now.
  # write and left...get it? :)
  left = number

  while zillions.length > 0
    zil_pair = zillions.pop
    zil_name = zil_pair[0]
    zil_base = 10 ** zil_pair[1]
    write = left/zil_base # How many zillions left?
    left = left - write*zil_base # Subtract off those zillions.

    if write > 0
      # Now here's the recursion:
      prefix = english_number write
      num_string = num_string + prefix + ' ' + zil_name

      if left > 0
        # So we don't write 'two billionfifty-one'...
        num_string = num_string + ' '
      end
    end
  end

  write = left/10 # How many tens left?
  left = left - write*10 # Subtract off those tens.

  if write > 0
    if ((write == 1) and (left > 0))
      # Since we can't write "tenty-two" instead of
      # "twelve", we have to make a special exception
      # for these.
      num_string = num_string + teenagers[left-1]
      # The "-1" is because teenagers[3] is
      # 'fourteen', not 'thirteen'.

      # Since we took care of the digit in the
      # ones place already, we have nothing left to write.
      left = 0
    else
      num_string = num_string + tens_place[write-1]
      # The "-1" is because tens_place[3] is
      # 'forty', not 'thirty'.
    end

    if left > 0
      # So we don't write 'sixtyfour'...
      num_string = num_string + '-'
    end
  end

  write = left # How many ones left to write out?
  left = 0 # Subtract off those ones.

  if write > 0
    num_string = num_string + ones_place[write-1]
    # The "-1" is because ones_place[3] is
    # 'four', not 'three'.
  end

  # Now we just return "num_string"...
  num_string
end
