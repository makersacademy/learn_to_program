start_num = 9999

def english_number(number)
  return "Please enter a number that isn\'t negative." if number < 0
  return 'zero' if number == 0

  num_str = ''

  ones = %w(one two three
          four five six
          seven eight nine)
  tens   = %w(ten twenty thirty
            forty fifty sixty
            seventy eighty ninety)
  teens  = %w(eleven twelve thirteen
            fourteen fifteen sixteen
            seventeen eighteen nineteen)
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

  while zillions.size > 0
    zil_pair = zillions.pop
    zil_name = zil_pair[0]
    zil_base = 10**zil_pair[1]
    write = left / zil_base
    left = left - write*zil_base

    if write > 0
      prefix = english_number write
      num_str = num_str + prefix + ' ' + zil_name

      if left > 0
        num_str << ' '
      end
    end
  end

  write = left / 10
  left = left - write * 10

  if write > 0
    if ((write == 1) && (left > 0))
      num_str << teens[left - 1]
      left = 0
    else
      num_str << tens[write - 1]
    end

    if left > 0
      num_str << '-'
    end
  end

  write = left
  left = 0

  if write > 0
    num_str << ones[write - 1]
  end

  num_str
end

if start_num < 1
  puts "Please add a few bottles of beer to the wall."
else
  start_num.downto(1) do |num|
    write_out = english_number(num).capitalize
    num == 1 ? plural = '' : plural = 's'
    puts "#{write_out} bottle#{plural} of beer on the wall,"
    puts "#{write_out} bottle#{plural} of beer."
    puts "You take one down and pass it around,"
    num == 2 ? plural = '' : plural = 's'
    puts "#{english_number(num - 1).capitalize} bottle#{plural} of beer on the wall."
    puts
  end
end
