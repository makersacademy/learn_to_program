def roman_to_integer roman
  roman_numerals = {
    "m" => 1000,
    "d" => 500,
    "c" => 100,
    "l" => 50,
    "x" => 10,
    "v" => 5,
    "i" => 1 }

  total = 0
  previous = 0

  index = roman.length - 1
  while index >= 0
    c = roman[index].downcase
    index = index - 1
    value = roman_numerals[c]
    if !value
      puts "This is not a valid roman numeral!"
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