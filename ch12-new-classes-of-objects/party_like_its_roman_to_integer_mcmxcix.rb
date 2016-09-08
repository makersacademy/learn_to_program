def roman_to_integer roman
  values = {
    'i' => 1,
    'v' => 5,
    'x' => 10,
    'l' => 50,
    'c' => 100,
    'd' => 500,
    'm' => 1000,
  }

  total = 0
  previous = 0
  index = roman.length - 1 #picks the last character in the string

  while index >= 0
    c = roman[index].downcase
    index = index - 1
    val = values[c]
    if !val
      puts 'This is not a Roman Numeral fooool!'
      return
    end

    if val < previous #as the loop goes around the value for previous changes, If the val is smaller than previous that number must become a negative and take the number away from the running total.
      val = val * -1
    else
      previous = val
    end
    total = total + val
  end

  total
end

puts roman_to_integer('MCMXCIX')
