def old_roman_numeral num
 roman_numeral = ''

 roman_numeral = roman_numeral + 'M' * (num / 1000)
  roman_numeral = roman_numeral + 'D' * (num % 1000 / 500)
   roman_numeral = roman_numeral + 'C' * (num % 500 / 100)
    roman_numeral = roman_numeral + 'L' * (num % 100 / 50) 
     roman_numeral = roman_numeral + 'X' * (num % 50 / 10) 
      roman_numeral = roman_numeral + 'V' * (num % 10 / 5)
       roman_numeral = roman_numeral + 'I' * (num % 5 / 1) 

end

puts(old_roman_numeral(1992)) #my birth year