def roman_numerals
  ones = "I"
  fives = "V"
  tens = "X"
  fifties = "L"
  hundreds = "C"
  fiveHundreds = "D"
  thousands = "M"

  numerals = ''

  (num / 1000).times { numerals << thousands }
  num = num % 1000
  (num / 500).times { numerals << fiveHundreds }
  num = num % 500
  (num / 100).times { numerals << hundreds }
  num = num % 100
  (num / 50).times { numerals << fifties }
  num = num % 50
  (num / 10).times { numerals << tens }
  num = num % 10
  (num / 5).times { numerals << fives }
  num = num % 5
  num.times { numerals << ones }

  numerals 
end
