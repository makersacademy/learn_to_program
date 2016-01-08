def roman_to_integer roman
  roman = roman.upcase
  number = 0
  numerals = {"M" => 1000, "D" => 500, "C" => 100, "L" => 50, "X" => 10, "V" => 5, "I" => 1}
  roman = roman.split ""
  roman.each_index { |index|
    letter = roman[index]
    next_letter = roman[index+1]
    if next_letter == nil
      numerals[next_letter] = 0
    end
    if index > 0
      prev_letter = roman[index-1]
    end
    if numerals[next_letter] > numerals[letter] && (numerals[letter] * 10) <= numerals[next_letter]
      number = number + numerals[next_letter] - numerals[letter]
    elsif index == 0
      number += numerals[letter]
    elsif numerals[prev_letter] < numerals[letter] && (numerals[prev_letter] * 10) <= (numerals[letter])
      number += 0
    elsif numerals[prev_letter] >= numerals[letter]
      number += numerals[letter]
    else
      return "This is not a valid roman numeral"
    end
  }
  number
end

#for some reason, this doesn't work for the Roman Numeral "iv". It works for all the others.

