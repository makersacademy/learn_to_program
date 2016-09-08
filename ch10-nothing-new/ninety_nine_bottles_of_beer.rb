def englishNumber number

  if number < 0
    return "Please enter a number which isn't negative"
  end
  if number == 0
    return "zero"
  end

  numString = ""

  onesPlace = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  tensPlace = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
  teenPlace = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
  hugeNumber = [["hundred", 2],["thousand", 3], ["million", 6], ["billion", 9], ["trillion", 12], ["quadrillion", 15]]

  left = number

  while hugeNumber.length > 0
    hugeNumber_pair = hugeNumber.pop
    hugeNumber_name = hugeNumber_pair[0]
    hugeNumber_base = 10 ** hugeNumber_pair[1]
    write = left / hugeNumber_base
    left = left - write * hugeNumber_base

    if write > 0
      prefix = englishNumber write
      numString = numString + prefix + "-" + hugeNumber_name
    end

    if left > 0
      numString = numString + ""
    end
  end


  write = left/10
  left = left - write*10

  if write > 0
    if ((write == 1) and (left > 0))
      numString = numString + teenPlace[left-1]
      left = 0
    else
      numString = numString + tensPlace[write-1]
    end

    if left > 0
      numString = numString + "-"
    end
  end

  write = left
  left  = 0

  if write > 0
    numString = numString + onesPlace[write-1]
  end

  numString

end


bottle_starting_count = 10
bottle_count = bottle_starting_count
while bottle_count > 1
  puts englishNumber(bottle_count).capitalize + " bottles of beer on the wall"
  puts englishNumber(bottle_count).capitalize + " bottles of beer"
  puts "You take 1 down, pass it around"
  bottle_count = bottle_count - 1
  puts englishNumber(bottle_count).capitalize + " bottles of beer on the wall"

end

puts "One bottle of beer on the wall"
puts "One bottle of beer"
puts "You take 1 down, pass it around"
puts "No more bottles of beer on the wall"
