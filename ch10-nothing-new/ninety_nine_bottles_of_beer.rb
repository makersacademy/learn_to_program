def englishNumber(number)
  if number < 0  # No negative numbers.
      return 'Please enter a number that isn\'t negative.'
    end
    if number == 0
      return 'zero'
    end

num_string = ""

onesPlace = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
tensPlace = ['ten', 'twenty', 'thirty','forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

remainder = number

current = remainder/1000000
remainder -= (current*1000000)

  if current  > 0
  millions = englishNumber current
  num_string = num_string + millions + ' million'
    if remainder > 0
      num_string += " "
    end
  end

current = remainder/1000
remainder -= (current*1000)

  if current  > 0
  thousands = englishNumber current
  num_string = num_string + thousands + ' thousand'
    if remainder > 0
      num_string += " "
    end
  end

current = remainder/100 #how many hundreds we have to write out
remainder -= (current*100)

if current > 0
  hundreds  = englishNumber current
    num_string = num_string + hundreds + ' hundred and'
    if remainder > 0
      num_string = num_string + " "
    end
end

current = remainder/10
remainder -= (current*10)

if current > 0
  if (current == 1) && (remainder > 0)
    num_string = num_string + teenagers[remainder-1]
    remainder = 0
  else
    num_string = num_string + tensPlace[current-1]
  end
  if remainder > 0
    num_string += "-"
  end
end

current = remainder
remainder = 0

if current > 0
  num_string = num_string + onesPlace[current-1]
end

num_string

end


num_bottles = 5
while num_bottles > 2
  puts englishNumber(num_bottles).capitalize + " bottles of beer on the wall, " + englishNumber(num_bottles) + " bottles of beer."
  num_bottles -= 1
  puts "Take one down and pass it around, " + englishNumber(num_bottles) + " bottles of beer on the wall."
end

puts "Two bottles of beer on the wall, two bottles of beer.
Take one down and pass it around, one bottle of beer on the wall."
puts "One bottle of beer on the wall, one bottle of beer.
Take one down and pass it around, no more bottles of beer on the wall."
puts "No more bottles of beer on the wall, no more bottles of beer."
puts "Go to the store and buy some more, 9999 bottles of beer on the wall."
# your code here
