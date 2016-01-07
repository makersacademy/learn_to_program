def english_number number

  return 'Please enter a number that isn\'t negative.' if number < 0
  return 'zero' if number == 0

  # No more special cases! No more returns!
  num_string = '' # This is the string we will return.
  ones_place = %w(one two three four five six seven eight nine)
  tens_place = %w(ten twenty thirty forty fifty sixty seventy eighty ninety)
  teenagers = %w(eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
  large_nos = [['hundred', 2],
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

  while large_nos.length > 0
    tested_object = large_nos.pop
    test_name = tested_object[0]
    test_base = 10 ** tested_object[1]
    write = left/test_base # How many zillions left?
    left = left - write*test_base # Subtract off those zillions.

    if write > 0
      # Now here's the recursion:
      prefix = english_number write
      num_string = num_string + prefix + ' ' + test_name
      num_string << ' ' if left > 0
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
      # The "-1" is because tens_place[3] is
      # 'forty', not 'thirty'.
    end
    num_string << ' ' if left >0
  end

  write = left # How many ones left to write out?
  left = 0 # Subtract off those ones.
  if write > 0
    num_string = num_string + ones_place[write-1]
    # The "-1" is because ones_place[3] is
    # 'four', not 'three'.
  end
  num_string
end

puts english_number( 0)
puts english_number( 9)
puts english_number( 10)
puts english_number( 11)
puts english_number( 17)
puts english_number( 32)
puts english_number( 88)
puts english_number( 99)
puts english_number(100)
puts english_number(101)
puts english_number(234)
puts english_number(3211)
puts english_number(999999)
puts english_number(1000000000000)
