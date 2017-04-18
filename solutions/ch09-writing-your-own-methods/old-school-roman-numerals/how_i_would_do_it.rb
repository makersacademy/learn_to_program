def old_roman_numeral num
  raise 'Must use positive integer' if num <= 0  # => nil

  roman = ''  # => ""

  roman << 'M' * (num / 1000)        # => "M"
  roman << 'D' * (num % 1000 / 500)  # => "M"
  roman << 'C' * (num % 500 / 100)   # => "MCC"
  roman << 'L' * (num % 100 / 50)    # => "MCC"
  roman << 'X' * (num % 50 / 10)     # => "MCCXXX"
  roman << 'V' * (num % 10 / 5)      # => "MCCXXX"
  roman << 'I' * (num % 5 / 1)       # => "MCCXXXIIII"

  roman  # => "MCCXXXIIII"
end      # => :old_roman_numeral

#old_roman_numeral(1234)  # => "MCCXXXIIII"

# In the above, if num / n is not a whole numer
# the return value x a string letter will be "".
# For example:
#
# => old_roman_numeral(1234)
# => roman << 'D' * (1234 % 1000 / 500)
# => roman << 'D' * (234 / 500)
# => roman << 'D' * 0.468
# => roman << ""
#
# Therefore no "D"s gets added to the roman variable.