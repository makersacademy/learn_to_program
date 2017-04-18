def english_number number
  if number < 0
    return "Please enter a number that isn't negative."
  end

  if number == 0
    return 'zero'
  end

  num_string = ""

  ones_place = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  tens_place = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
  teenagers = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]

  left = number
  write = left/100
  left = left - write * 100

  if write > 0
    hundreds = english_number write
    num_string = num_string + hundreds + " hundred"
    if left > 0
      num_string = num_string + " "
    end
  end

  write = left/10
  left = left - write * 10

  if write > 0
    if write == 1 and left > 0
      num_string = num_string + teenagers[left - 1]
      left = 0
    else
      num_string = num_string + tens_place[write - 1]
    end

    if left > 0
    num_string = num_string + "-"
    end
  end

  write = left
  left = 0

  if write > 0
    num_string = num_string + ones_place[write - 1]
  end

  num_string
end

def beer_song(n)
  until n == 2
    puts "#{english_number(n).capitalize} bottles of beer on the wall, #{english_number(n)} bottles of beer!"
    puts "Take one down, pass it around, #{english_number(n-1)} bottles of beer on the wall!"
    n -= 1
  end
  puts "Two bottles of beer on the wall, two bottles of beer!"
  puts "Take one down, pass it around, one bottle of beer on the wall!"
  puts "One bottle of beer on the wall, one bottle of beer!"
  puts "Take one down, pass it around, zero bottles of beer on the wall!"
end
