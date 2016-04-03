def english_number(number)
  if number < 0 # no negative numbers
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

# No more special cases! No more returns!

  num_string = '' # This is the string we will return.

  ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
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

  # "left" is how much of the number we still have left to write out.
  # "write" is the part we are writing out right now.
  # write and left... get it? :)

  left = number

  while zillions.length > 0
    zil_pair = zillions.pop
    zil_name =        zil_pair[0]
    zil_base =  10 ** zil_pair[1]
    write    = left / zil_base
    # How many zillions left?
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

=begin
edited out old version
  write = left / 1000_000_000_000_000
  left = left - write * 1000_000_000_000_000

  if write > 0
    trillions = english_number(write)
    num_string = num_string + trillions + ' quadrillion'

    # Recursion bitches!

    if left > 0
      num_string = num_string + ' '
    end
  end

  write = left / 1000_000_000_000
  left = left - write * 1000_000_000_000

  if write > 0
    trillions = english_number(write)
    num_string = num_string + trillions + ' trillion'

    # Recursion bitches!

    if left > 0
      num_string = num_string + ' '
    end
  end

  write = left / 1000_000_000
  left = left - write * 1000_000_000

  if write > 0
    billions = english_number(write)
    num_string = num_string + billions + ' billion'

    # Recursion bitches!

    if left > 0
      num_string = num_string + ' '
    end
  end

  write = left / 1000_000          # How many millions left to write out?
  left = left - write * 1000_000    # Subtract off those millions

  if write > 0
    millions = english_number(write)
    num_string = num_string + millions + ' million'

    # Recursion bitches!

    if left > 0
      # So we don't write "two millionfive hundred thousand"
      num_string = num_string + ' '
    end
  end

  write = left / 1000           # How many thousands left to write out?
  left = left - write * 1000    # Subtract off those thousands

  if write > 0
    thousands = english_number(write)
    num_string = num_string + thousands + ' thousand'

    # Recursion bitches!

    if left > 0
      # So we don't write "two thousandfive hundred"
      num_string = num_string + ' '
    end
  end

  write = left / 100            # How many hundreds left to write out?
  left = left - write * 100     # Subtract off those hundreds

  if write > 0
    hundreds = english_number(write)
    num_string = num_string + hundreds + ' hundred'

    # Recursion bitches!

    if left > 0
      # So we don't write "two hundredfifty-one"
      num_string = num_string + ' '
    end
  end

=end

  write = left / 10         # How many tens left to write out?
  left = left - write * 10  # Subtract off those tens.

  if write > 0
    if ((write == 1) && (left > 0))
      # Since we can't write "tenty-two" instead of "twelve",
      # we have to make a special exception for these.
      num_string = num_string + teenagers[left - 1]

      left = 0
    else
      num_string = num_string + tens_place[write - 1]
    end

    if left > 0
      # So we don't write 'sixtyfour'...
      num_string = num_string + '-'
    end
  end

  write = left      # How many ones are left to write out?
  left = 0          # Subtract off those ones

  if write > 0
    num_string = num_string + ones_place[write - 1]
  end

  num_string
end

