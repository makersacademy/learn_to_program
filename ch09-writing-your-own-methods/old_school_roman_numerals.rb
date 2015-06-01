def old_roman_numeral num
  # your code here
  roman_number = ''
  roman_number = roman_number + 'M' * (num / 1000)
  roman_number = roman_number + 'D' * (num % 1000 /500)
  roman_number = roman_number + 'C' * (num % 500 /100)
  roman_number = roman_number + 'L' * (num % 100 /50)
  roman_number = roman_number + 'X' * (num % 50 /10)
  roman_number = roman_number + 'V' * (num % 10 /5)
  roman_number = roman_number + 'I' * (num % 5 /1)

  roman_number

end
