def roman_numeral num
  number = ""
  
  number << 'M' * (num/1000)
  number << 'CM' * (num % 1000 / 900)
  number << 'D' * (num % 900 / 500)
  number << 'CD' * (num % 500 / 400)
  number << 'C' * (num % 400 / 100)
  number << 'XC' * (num % 100 / 90)
  number << 'L' * (num % 90 / 50)
  number << 'XL' * (num % 50 / 40)
  number << 'X' * (num % 40 / 10)
  number << 'IX' * (num % 10 / 9)
  number << 'V' * (num % 9 / 5)
  number << 'IV' * (num % 5 / 4)
  number << 'I' * (num % 4 / 1)
  
puts number
end

roman_numeral 54
