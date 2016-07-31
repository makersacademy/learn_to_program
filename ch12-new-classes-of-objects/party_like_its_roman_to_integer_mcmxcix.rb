def roman_to_integer roman

  number = 0
  prev_value = 0

  roman.upcase!

  numeral_values = {"M"=>1000, "D"=>500, "C"=>100, "L"=>50, "X"=>10, "V"=>5, "I"=>1}

  roman.reverse.each_char { |character| if numeral_values[character] == nil
    return "Please enter a valid roman numeral less than 4,000"
  else value = numeral_values[character]
    if value < prev_value
      number -= value
    else
    number += value
    prev_value = value
    end
  end }

  return number

end
