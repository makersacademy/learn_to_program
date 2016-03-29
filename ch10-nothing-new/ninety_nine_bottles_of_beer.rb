def english_number(number)
  if number < 0
    return "Please enter a number zero or greater."
  end
  if number > 100
    return "Please enter a number 100 or less."
  end
  if number == 0
    return "zero"
  end
  num_string =""
  ones_place = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  tens_place = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
  teenagers = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
  left = number
  write = left / 1000
  left = left - write * 1000
  if write > 0
    thousands = english_number(write)
    num_string = num_string + thousands + " thousand"
    if left > 0
      num_string = num_string + " "
    end
  end
  write = left / 100
  left = left - write * 100
  if write > 0
    hundreds = english_number(write)
    num_string = num_string + hundreds + " hundred"
    if left > 0
      num_string = num_string + " "
    end
  end
  write = left / 10
  left = left - write * 10
  if write > 0
    if ((write == 1) and (left > 0))
      num_string = num_string + teenagers[left-1]
      left = 0
    else
      num_string = num_string + tens_place[write-1]
    end
    if left > 0
      num_string = num_string + "-"
    end
  end
  write = left
  left = 0
  if write > 0
    num_string = num_string + ones_place[write-1]
  end
  num_string
end

 bottles = 5

while bottles > 2 do
 puts "#{english_number(bottles).capitalize} bottles of beer on the wall, #{english_number(bottles)} bottles of beer!"
 puts "Take one down, pass it around, #{english_number(bottles-1)} bottles of beer on the wall!"
  bottles = bottles - 1
end

if bottles = 2
 puts "#{english_number(bottles).capitalize} bottles of beer on the wall, #{english_number(bottles)} bottles of beer!"
 puts "Take one down, pass it around, #{english_number(bottles-1)} bottle of beer on the wall!"
  bottles = bottles - 1
end

if bottles = 1
 puts "#{english_number(bottles).capitalize} bottle of beer on the wall, #{english_number(bottles)} bottle of beer!"
 puts "Take one down, pass it around, no more bottles of beer on the wall!"
end



