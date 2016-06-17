def roman_to_integer roman
  digit_value = { "I" => 1,
                  "V" => 5,
                  "X" => 10,
                  "L" => 50,
                  "C" => 100,
                  "D" => 500,
                  "M" => 1000,}
  total = 0
  previous = 0
  index = roman.length - 1
  while index >= 0
    x = roman[index].upcase
    index -= 1
    value = digit_value[x]
    if !value
      puts 'This is not a valid roman numeral!'
      return
    elsif value < previous
      value *= -1
    else
      previous = value
    end
    total += value
  end

  total
end
