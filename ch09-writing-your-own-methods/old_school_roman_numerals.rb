def old_roman_numeral num
# empty string is assigned to the variable roman.
roman = ''

# num is divided by 1000. Using the / method that leaves no remainders. The answer is then multplied by the string 'M'.
roman = roman + 'M' * (num / 1000)
# roman now has the new value of 'M'. Now num is divided by 1000, but this time using the % method that returns the remainder. 
#The remaineder is then diided by 500 using the /method that doesn't return a remainder. The answer is then multiplied by the string 'D'
# Which is added to the previous roman variable value 'MD'
roman = roman + 'D' * (num % 1000 / 500)
# The method continues to add the new set of strings. 
roman = roman + 'C' * (num % 500 / 100)

roman = roman + 'L' * (num % 100 / 50)

roman = roman + 'X' * (num % 50 / 10)

roman = roman + 'V' * (num % 10 / 5)

roman = roman + 'I' * (num % 5 / 1)

roman # The complete set. 

end

puts(old_roman_numeral(1999))
