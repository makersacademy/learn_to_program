def english_number (number)
  return "Please enter a non-negative number" if number < 0
  return "zero" if number==0

  num_string = ""
  ones_place = ["one", "two", "three", "four", "five",
    "six", "seven", "eight", "nine"]
  tens_place = ["ten", "twenty", "thirty", "forty", "fifty",
    "sixty", "seventy", "eighty", "ninety"]
  teenagers = ["eleven", "twelve", "thirteen", "fourteen", "fifteen",
    "sixteen", "seventeen", "eighteen", "nineteen"]
  higher = [['hundred' , 2] , ['thousand' , 3] , ['million' , 6],
    ['billion' , 9] , ['trillion' , 12] , ['quadrillion' , 15] ,
    ['qintillion' , 18] , ['sextillion' , 21] ,
    ['septillion', 24] ,['octillion', 27] , ['nonillion', 30] ,
    ['decillion', 33] ,['undecillion', 36] ,
    ['duodecillion', 39] , ['tredecillion', 42] ,
    ['quattuordecillion', 45] , ['quindecillion', 48] ,
    ['sexdecillion', 51] , ['septendecillion', 54] ,
    ['octodecillion', 57] , ['novemdecillion', 60] ,
    ['vigintillion', 63] , ['googol', 100]]

  left = number

  while higher.length > 0
    higher_pair = higher.pop
    higher_name = higher_pair[0]
    higher_base = 10**higher_pair[1]
    write = left/higher_base
    left = left - write*higher_base

    if write > 0
      prefix = english_number(write)
      num_string = num_string + prefix + " " + higher_name
      num_string << " " if left > 0
    end
  end
  # writing out this right now - doing the HUNDREDS
  write = left/100
  # define new left
  left = left - write*100

  if write > 0
    hundreds = english_number(write)
    num_string << hundreds + " hundred"
    # add a space to avoid e.g. two hundredfifty one
    if left > 0
      num_string = num_string + "-"
    end
  end

  # now doing the tens
  write = left/10
  left = left - write*10

  if write > 0
  # special case for teens
    if write==1 && left > 0
      # indexing of teens array needs left-1
      num_string << teenagers[left-1]
      left=0
    # indexing of tens array needs write-1
    else num_string << tens_place[write-1]
    end
  num_string << " " if left > 0
  end

  write = left/1
  left = 0
  if write > 0
    num_string << ones_place[write-1]
  end

  num_string
end

puts english_number 7
puts english_number 13
puts english_number 45
puts english_number ( 0)
puts english_number 100
puts english_number 99
puts english_number 101
puts english_number 201
puts english_number 3211
puts english_number 100000001
