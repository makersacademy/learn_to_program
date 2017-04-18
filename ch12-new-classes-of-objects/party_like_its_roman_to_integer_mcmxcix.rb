def roman_to_integer roman
  romans = {
    "I" => 1,
    "V" => 5,
    "X" => 10,
    "L" => 50,
    "C" => 100,
    "D" => 500,
    "M" => 1000}

  numbers = roman.upcase.split(//)

  total = 0
  previous = 0
  index = roman.length - 1

  while index >= 0
    letter = roman[index].upcase
    index = index - 1
    value = romans[letter]
    if !value
      puts "Not a valid roman numeral."
      return
    end

    if value < previous
      value = value * -1
    else
      previous = value
    end
    total = total + value
  end
  total
end

