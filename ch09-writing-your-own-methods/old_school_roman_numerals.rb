def old_roman_numeral num
roman = ''
roman = roman + 'M' * (num / 1000)
roman = roman + 'D' * (num % 1000 / 500)
roman = roman + 'C' * (num % 500 / 100)
roman = roman + 'L' * (num % 100 / 50)
roman = roman + 'X' * (num % 50 / 10)
roman = roman + 'V' * (num % 10 / 5)
roman = roman + 'I' * (num % 5 / 1) 
roman
end

#testing

puts old_roman_numeral 6
puts old_roman_numeral 29
puts old_roman_numeral 349
puts old_roman_numeral 1004
puts old_roman_numeral 1984



#initial code 
#return 'I' * num  if num < 5 
#return 'V' + ('I' * (num%5))  if num < 10 
#return 'X' + ('I' * (num%5)) if num < 15
#return 'XV' + ('I' * (num%5)) if num < 20
#return 'XX' + ('I' * (num%5)) if num < 25
#return 'XXV' + ('I' * (num%5)) if num < 30
#return 'XXX' + ('I' * (num%5)) if num < 35
#return 'XXXV' + ('I' * (num%5)) if num < 40