def roman_numeral(number)
  # Going to try a tack similar to the one for english_numbers
  # Looking at the tests, don't need to worry about nine hundred and something
  # or ninety something, only worry about "SUBTRACTING NUMERALS" for 9 and 19
  solution = ''

  write = number / 1000
  left = number - write * 1000
  solution += "M" * write

  write = left / 500
  left -= write * 500
  solution += "D" * write

  write = left / 100
  left -= write * 100
  solution += "C" * write

  write = left / 50
  left -= write * 50
  solution += "L" * write

  write = left / 10
  left -= write * 10
  solution += "X" * write

  remaining = [ "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX", "X",
            "XI", "XII", "XIII", "XIV", "XV", "XVI", "XVII", "XVIII", "XIX",]

   solution += remaining[left - 1] if left > 0

   solution

end

p roman_numeral(513)
p roman_numeral(19)
p roman_numeral(1017)
