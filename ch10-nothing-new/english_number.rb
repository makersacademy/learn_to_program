def english_number number
  if number < 0                                        # => false, false
    return "Please enter a number that isnt negative"
  end
  if number == 0                                       # => false, false
    return 'zero'
  end
  num_string = ''                                      # => "", ""

  ones_place = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]                                # => ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"], ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  tens_place = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]                   # => ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"], ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
  teenagers = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]  # => ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"], ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
  zillions = [['hundred', 2],['thousand', 3],['million', 6], ['billion', 9], ['trillion', 12], ['quadrillion', 15],                 # => ["quadrillion", 15]
              ['quintillion', 18], ['sextillion', 21], ['septillion', 24], ['octillion', 27], ['nonillion', 30],                    # => ["nonillion", 30]
              ['decillion', 33], ['undecillion', 36], ['duodecillion', 39], ['tredecillion', 42], ['quattuordecillion', 45],        # => ["quattuordecillion", 45]
              ['quindecillion', 48], ['sexdecillion', 51], ['septendecillion', 54], ['octodecillion', 57], ['novemdecillion', 60],  # => ["novemdecillion", 60]
              ['vigintillion', 63], ['googol', 100]]                                                                          # => [["hundred", 2], ["thousand", 3]], [["hundred", 2], ["thousand", 3]]

  left = number  # => 2000, 2

# =========== ANY ZILLIONS =====================
  while zillions.length > 0       # => true, true, true, false, true, false

    # with an example of 2000, this is false
    zil_pair = zillions.pop       # => ["thousand", 3], ["thousand", 3], ["hundred", 2], ["hundred", 2]

    # this pops the last element in the array, into the var zil_pair
    zil_name = zil_pair[0]        # => "thousand", "thousand", "hundred", "hundred"

    # gives the first index of the array pair a name in var zil_name (thousand)
    zil_base = 10 ** zil_pair[1]  # => 1000, 1000, 100, 100

    # does 10 to the power of 3 (the number index), to give '1,000'

    write = left/zil_base           # => 2, 0, 0, 0

    # this is like the below, to give  how many 'thousands' we are working on
    # could have been billions or anything. As per the below now.
    left = left - write * zil_base  # => 0, 2, 2, 0

    # subtract of the thousands (in this case) to see how many we have left

    if write > 0                                         # => true, false, false, false
      prefix = english_number(write)                     # => "two"
      num_string = num_string + prefix + ' ' + zil_name  # => "two thousand"

    # This section will run the method again, in order to get the pre fix to the 0's - ie two and thousand, depending
    # on the number of 0s. But only if the write (what we are working on) requires it.

      if left > 0                      # => false
        num_string = num_string + ' '
      end                              # => nil
    end                                # => nil, nil, nil, nil
  end                                  # => nil, nil

  write = left / 10         # => 0, 0
  left = left - write * 10  # => 2, 0

# ============== ANY TENS =========================
  if write > 0                                       # => false, false
    if ((write == 1) && (left > 0))
      num_string = num_string + teenagers[left-1]
      left = 0
    else
      num_string = num_string + tens_place[write-1]
    end

    if left > 0
      num_string = num_string + '-'
    end
  end                                # => nil, nil

  write = left  # => 2, 0
  left = 0      # => 0, 0

# =============== ANY ONES =========================
  if write > 0                                     # => true, false
    num_string = num_string + ones_place[write-1]  # => "two"
  end                                              # => "two", nil

  num_string  # => "two", "two thousand"
end           # => :english_number
