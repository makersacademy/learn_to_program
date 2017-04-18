def english_number(number)
  if number < 0                                        # => false, false, false, false, false, false, false, false, false, false, false, false, false, false, false
    return "Please enter a number that isnt negative"
  end
  if number == 0                                       # => false, false, false, false, false, false, false, false, false, false, false, false, false, false, true
    return 'zero'                                      # => "zero"
  end
  num_string = ''                                      # => "", "", "", "", "", "", "", "", "", "", "", "", "", ""

  ones_place = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]                                             # => ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"], ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"], ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"], ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"], ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"], ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"], ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"], ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"], ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"], ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"], ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"], ["one", "two", "three", "four", "five", "six",...
  tens_place = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]                                # => ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"], ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"], ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"], ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"], ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"], ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"], ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"], ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"], ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"], ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "...
  teenagers = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]               # => ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"], ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"], ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"], ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"], ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"], ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"], ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"], ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"], ["eleven", "twelve",...
  zillions = [['hundred', 2],['thousand', 3],['million', 6], ['billion', 9], ['trillion', 12], ['quadrillion', 15],                 # => ["quadrillion", 15], ["quadrillion", 15], ["quadrillion", 15], ["quadrillion", 15], ["quadrillion", 15], ["quadrillion", 15], ["quadrillion", 15], ["quadrillion", 15], ["quadrillion", 15], ["quadrillion", 15], ["quadrillion", 15], ["quadrillion", 15], ["quadrillion", 15], ["quadrillion", 15]
              ['quintillion', 18], ['sextillion', 21], ['septillion', 24], ['octillion', 27], ['nonillion', 30],                    # => ["nonillion", 30], ["nonillion", 30], ["nonillion", 30], ["nonillion", 30], ["nonillion", 30], ["nonillion", 30], ["nonillion", 30], ["nonillion", 30], ["nonillion", 30], ["nonillion", 30], ["nonillion", 30], ["nonillion", 30], ["nonillion", 30], ["nonillion", 30]
              ['decillion', 33], ['undecillion', 36], ['duodecillion', 39], ['tredecillion', 42], ['quattuordecillion', 45],        # => ["quattuordecillion", 45], ["quattuordecillion", 45], ["quattuordecillion", 45], ["quattuordecillion", 45], ["quattuordecillion", 45], ["quattuordecillion", 45], ["quattuordecillion", 45], ["quattuordecillion", 45], ["quattuordecillion", 45], ["quattuordecillion", 45], ["quattuordecillion", 45], ["quattuordecillion", 45], ["quattuordecillion", 45], ["quattuordecillion", 45]
              ['quindecillion', 48], ['sexdecillion', 51], ['septendecillion', 54], ['octodecillion', 57], ['novemdecillion', 60],  # => ["novemdecillion", 60], ["novemdecillion", 60], ["novemdecillion", 60], ["novemdecillion", 60], ["novemdecillion", 60], ["novemdecillion", 60], ["novemdecillion", 60], ["novemdecillion", 60], ["novemdecillion", 60], ["novemdecillion", 60], ["novemdecillion", 60], ["novemdecillion", 60], ["novemdecillion", 60], ["novemdecillion", 60]
              ['vigintillion', 63], ['googol', 100]]                                                                                # => [["hundred", 2], ["thousand", 3], ["million", 6], ["billion", 9], ["trillion", 12], ["quadrillion", 15], ["quintillion", 18], ["sextillion", 21], ["septillion", 24], ["octillion", 27], ["nonillion", 30], ["decillion", 33], ["undecillion", 36], ["duodecillion", 39], ["tredecillion", 42], ["quattuordecillion", 45], ["quindecillion", 48], ["sexdecillion", 51], ["septendecillion", 54], ["octodecillion", 57], ["novemdecillion", 60], ["vigintillion", 63], ["googol", 100]], [["hundred", 2], ["thousand", 3], ["million", 6], ["billion", 9], ["trillion", 12], ["quadrillion", 15], ["quintillion", 18], ["sextillion", 21], ["septillion", 24], ["octillion", 27], ["nonillion", 30], ["decillion", 33], ["undecillion", 36], ["duodecillion", 39], ["tredecillion", 42], ["quattuordecillion", 45], ["quindecillion", 48], ["sexdecillion", 51], ["septendecillion", 54], ["o...

  left = number  # => 5, 5, 4, 4, 4, 3, 3, 3, 2, 2, 2, 1, 1, 1

# =========== ANY ZILLIONS =====================
  while zillions.length > 0  # => true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, false, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, false, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, false, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, false, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, false, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, false, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, tru...

    # with an example of 2000, this is false
    zil_pair = zillions.pop  # => ["googol", 100], ["vigintillion", 63], ["novemdecillion", 60], ["octodecillion", 57], ["septendecillion", 54], ["sexdecillion", 51], ["quindecillion", 48], ["quattuordecillion", 45], ["tredecillion", 42], ["duodecillion", 39], ["undecillion", 36], ["decillion", 33], ["nonillion", 30], ["octillion", 27], ["septillion", 24], ["sextillion", 21], ["quintillion", 18], ["quadrillion", 15], ["trillion", 12], ["billion", 9], ["million", 6], ["thousand", 3], ["hundred", 2], ["googol", 100], ["vigintillion", 63], ["novemdecillion", 60], ["octodecillion", 57], ["septendecillion", 54], ["sexdecillion", 51], ["quindecillion", 48], ["quattuordecillion", 45], ["tredecillion", 42], ["duodecillion", 39], ["undecillion", 36], ["decillion", 33], ["nonillion", 30], ["octillion", 27], ["septillion", 24], ["sextillion", 21], ["quintillion", 18], ["quadrillion", 15], ["trillion", 12], ["billion", 9], ["million", 6], ["thousand", 3], ["hundred", 2], ["googol", 100], ["vigi...

    # this pops the last element in the array, into the var zil_pair
    zil_name = zil_pair[0]  # => "googol", "vigintillion", "novemdecillion", "octodecillion", "septendecillion", "sexdecillion", "quindecillion", "quattuordecillion", "tredecillion", "duodecillion", "undecillion", "decillion", "nonillion", "octillion", "septillion", "sextillion", "quintillion", "quadrillion", "trillion", "billion", "million", "thousand", "hundred", "googol", "vigintillion", "novemdecillion", "octodecillion", "septendecillion", "sexdecillion", "quindecillion", "quattuordecillion", "tredecillion", "duodecillion", "undecillion", "decillion", "nonillion", "octillion", "septillion", "sextillion", "quintillion", "quadrillion", "trillion", "billion", "million", "thousand", "hundred", "googol", "vigintillion", "novemdecillion", "octodecillion", "septendecillion", "sexdecillion", "quindecillion", "quattuordecillion", "tredecillion", "duodecillion", "undecillion", "decillion", "nonillion", "octillion", "septillion", "sextillion", "quintillion", "quadrillion", "trillion", "bil...

    # gives the first index of the array pair a name in var zil_name (thousand)
    zil_base = 10 ** zil_pair[1]  # => 10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, 1000000000000000000000000000000000000000000000000000000000000000, 1000000000000000000000000000000000000000000000000000000000000, 1000000000000000000000000000000000000000000000000000000000, 1000000000000000000000000000000000000000000000000000000, 1000000000000000000000000000000000000000000000000000, 1000000000000000000000000000000000000000000000000, 1000000000000000000000000000000000000000000000, 1000000000000000000000000000000000000000000, 1000000000000000000000000000000000000000, 1000000000000000000000000000000000000, 1000000000000000000000000000000000, 1000000000000000000000000000000, 1000000000000000000000000000, 1000000000000000000000000, 1000000000000000000000, 1000000000000000000, 1000000000000000, 1000000000000, 1000000000, 1000000, 1000, 100, 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000...

    # does 10 to the power of 3 (the number index), to give '1,000'

    write = left/zil_base  # => 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ...

    # this is like the below, to give  how many 'thousands' we are working on
    # could have been billions or anything. As per the below now.
    left = left - write * zil_base  # => 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, ...

    # subtract of the thousands (in this case) to see how many we have left

    if write > 0                                         # => false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, fals...
      prefix = english_number(write)
      num_string = num_string + prefix + ' ' + zil_name

    # This section will run the method again, in order to get the pre fix to the 0's - ie two and thousand, depending
    # on the number of 0s. But only if the write (what we are working on) requires it.

      if left > 0
        num_string = num_string + ' '
      end
    end                                # => nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil...
  end                                  # => nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil

  write = left / 10         # => 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
  left = left - write * 10  # => 5, 5, 4, 4, 4, 3, 3, 3, 2, 2, 2, 1, 1, 1

# ============== ANY TENS =========================
  if write > 0                                       # => false, false, false, false, false, false, false, false, false, false, false, false, false, false
    if ((write == 1) && (left > 0))
      num_string = num_string + teenagers[left-1]
      left = 0
    else
      num_string = num_string + tens_place[write-1]
    end

    if left > 0
      num_string = num_string + '-'
    end
  end                                # => nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil

  write = left  # => 5, 5, 4, 4, 4, 3, 3, 3, 2, 2, 2, 1, 1, 1
  left = 0      # => 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

# =============== ANY ONES =========================
  if write > 0                                     # => true, true, true, true, true, true, true, true, true, true, true, true, true, true
    num_string = num_string + ones_place[write-1]  # => "five", "five", "four", "four", "four", "three", "three", "three", "two", "two", "two", "one", "one", "one"
  end                                              # => "five", "five", "four", "four", "four", "three", "three", "three", "two", "two", "two", "one", "one", "one"

  num_string  # => "five", "five", "four", "four", "four", "three", "three", "three", "two", "two", "two", "one", "one", "one"
end           # => :english_number

def bottles(bottle_num)
  while bottle_num > 0                                                                                                                                                                                       # => true, true, true, true, true, false
      nons = "bottles" if bottle_num > 1                                                                                                                                                                     # => "bottles", "bottles", "bottles", "bottles", nil
      nons = "bottle" if bottle_num <= 1                                                                                                                                                                     # => nil, nil, nil, nil, "bottle"
      stanza = "#{english_number(bottle_num)} #{nons} of beer on the wall, #{english_number(bottle_num)} #{nons} of beer. Take one down, pass it around, #{english_number(bottle_num - 1)} #{nons} of beer"  # => "five bottles of beer on the wall, five bottles of beer. Take one down, pass it around, four bottles of beer", "four bottles of beer on the wall, four bottles of beer. Take one down, pass it around, three bottles of beer", "three bottles of beer on the wall, three bottles of beer. Take one down, pass it around, two bottles of beer", "two bottles of beer on the wall, two bottles of beer. Take one down, pass it around, one bottles of beer", "one bottle of beer on the wall, one bottle of beer. Take one down, pass it around, zero bottle of beer"
      puts stanza                                                                                                                                                                                            # => nil, nil, nil, nil, nil
      bottle_num = bottle_num - 1                                                                                                                                                                            # => 4, 3, 2, 1, 0
  end                                                                                                                                                                                                        # => nil
end                                                                                                                                                                                                          # => :bottles

bottles(5)  # => nil

# >> five bottles of beer on the wall, five bottles of beer. Take one down, pass it around, four bottles of beer
# >> four bottles of beer on the wall, four bottles of beer. Take one down, pass it around, three bottles of beer
# >> three bottles of beer on the wall, three bottles of beer. Take one down, pass it around, two bottles of beer
# >> two bottles of beer on the wall, two bottles of beer. Take one down, pass it around, one bottles of beer
# >> one bottle of beer on the wall, one bottle of beer. Take one down, pass it around, zero bottle of beer
