def roman_numeral num
  numerals = ''

  numerals << 'M' * (num / 1000)
  num % 1000 % 500 != 400 ? numerals << 'D' * (num % 1000 / 500) : (num % 1000 == 900 ? numerals << 'CM' : numerals << 'CD')
  numerals << 'C' * (num % 500 / 100)
  num % 100 % 50 !=40 ? numerals << 'L' * (num % 100 / 50) : (num % 100 == 90 ? numerals << 'XC' : numerals << 'XL')
  numerals << 'X' * (num % 50 / 10)
  num % 10 % 5 != 4 ? numerals << 'V' * (num % 10 / 5) : (num % 10 == 9 ? numerals << 'IX' : numerals << 'IV') 
  num % 5 != 4 ? numerals << 'I' * (num %5 / 1) : '' 

  numerals 
end