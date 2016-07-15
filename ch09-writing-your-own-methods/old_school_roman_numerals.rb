def old_roman_numeral num

  return "Insert positive integer" if num <= 0

  answer = ""

  answer << "M" * (num / 1000)
  answer << "D" * (num % 1000/500)
  answer << "C" * (num % 500/100)
  answer << "L" * (num % 100/50)
  answer << "X" * (num % 50/10)
  answer << "V" * (num % 10/5)
  answer << "I" * (num % 5/1)

end
