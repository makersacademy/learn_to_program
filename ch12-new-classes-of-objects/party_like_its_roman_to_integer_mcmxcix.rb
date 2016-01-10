def roman_to_integer roman
  roman = roman.upcase.reverse
  number = 0
  numerals = {"M" => 1000, "D" => 500, "C" => 100, "L" => 50, "X" => 10, "V" => 5, "I" => 1}
  roman = roman.split ""
  roman.each_index { |index|
    letter = roman[index]
    prev_letter = roman[index - 1]
    divide = numerals[prev_letter]/numerals[letter]
    if index == 0
      number += numerals[letter]
    elsif divide == 5 || divide == 10
      number -= numerals[letter]
    elsif divide == 0 || divide == 1
      number += numerals[letter]
    else
      return "This is not a valid roman numeral"
    end
  }
  number
end


