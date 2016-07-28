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

  # left is what remains to write out
  left = number
  # writing out this right now - doing the HUNDREDS
  write = left/100
  # define new left
  left = left - write*100

  if write > 0
    hundreds=english_number(write)
    num_string = num_string + hundreds.to_s + " hundred"
    # add a space to avoid e.g. two hundredfifty one
    if left > 0
      num_string << " "
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
  num_string << ones_place[write-1] if write > 0

  puts num_string
end

english_number 7
english_number 13
english_number 45
english_number ( 0)
english_number 100
english_number 99
english_number 101
english_number 201
