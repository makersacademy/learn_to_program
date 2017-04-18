# This is the method name, passing a roman numeral to the method
# The var digit_vals sets up a hash with the roman numerals and their values.
def roman_to_integer(roman)
  digit_vals = {
    'i' => 1,                # => 1
    'v' => 5,                # => 5
    'x' => 10,               # => 10
    'l' => 50,               # => 50
    'c' => 100,              # => 100
    'd' => 500,              # => 500
    'm' => 1000              # => 1000
  }                          # => {"i"=>1, "v"=>5, "x"=>10, "l"=>50, "c"=>100, "d"=>500, "m"=>1000}
# sets a total, previous and index variable
# the index is simply the index of the roman numeral, its length - 1 gives the last index [1], [2], etc
  total = 0                  # => 0
  prev = 0                   # => 0
  index = roman.length - 1   # => 1

# This while loops says that while the index value is greater than one, do the following
# c is the index value, downcased. index becomes index -1, and val (new var_ is the value of the hash roman numeral
  while index >= 0             # => true, true, false
    c = roman[index].downcase  # => "v", "i"
    index = index - 1          # => 0, -1
    val = digit_vals[c]        # => 5, 1

# This says that if val is false, i.e returns nil (in that is doesnt make any sense as a roma numeral) then return error
    if !val                                      # => false, false
      puts "This is not a valid roman numeral!"
      return
    end

# still part of the loop, if a number is less than the previous one, we need to convert this to a negative,
# in order to delete it from the previous total.
# failing this, move on and set the prev value to the value (in order to repeat the negative method next time round
# total becomes total plus the value, in order to add the next iteration to the old total and comtinue to add
# the numbers together, or take them away.
    if val < prev        # => false, true
      val = val * -1     # => -1
    else
      prev = val         # => 5
    end                  # => 5, -1
    total = total + val  # => 5, 4
    #we repeat in the while loop if there are more index numbers to evaluate.
  end                    # => nil
    total                # => 4

end  # => :roman_to_integer
