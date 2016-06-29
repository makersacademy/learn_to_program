def roman_to_integer roman
  #  make ruby hash to store the different roman numeral cases
  roman_dig = {'i' => 1,
              'v' => 5,
              'x' => 10,
              'l' => 50,
              'c' => 100,
              'd' => 500,
              'm' => 1000
              'I' => 1,
              'V' => 5,
              'X' => 10,
              'L' => 50,
              'C' => 100,
              'D' => 500,
              'M' => 1000}
  #output to count the number, and what we will output at the end
  output = 0
  #prev to store the previous value incase we need to subtract
  #e.g. IV would mean subtracting 1 from 5 not adding them together
  prev = 0
  #minus 1 because the string starts at 0 for the first char
  index = roman.length - 1

  #loops through the string starting at the end
  #checks if the character is a roman numeral
  #takes the value associated with the character from the hash
  #reduces the index count to eventually end the loop
  while index >= 0
    x = roman[index]
    index -= 1
    value = roman_dig[x]
    if !value
      puts 'Invalid roman numeral'
      return
    end

    #if the value is less that the previous it means
    #the number must be subtracted instead
    if value < prev
      #times by minus 1 to create the negative value
      value *= -1
    else
      #if it wasnt smaller, the current value becomes the new prev
      #for the next cycle of the loop
      prev = value
    end
    #add the value to the total
    total += value
  end

#output the total
total


end
