def old_roman_numeral num
  number = ""
  
  number << 'M' * (num/1000)
  number << 'D' * (num % 1000 / 500)
  number << 'C' * (num % 500 / 100)
  number << 'L' * (num % 100 / 50)
  number << 'X' * (num % 50 / 10)
  number << 'V' * (num % 10 / 5)
  number << 'I' * (num % 5 / 1)
  
puts number  
end

old_roman_numeral 4