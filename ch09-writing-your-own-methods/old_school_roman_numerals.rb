def old_roman_numeral (num )
  roman = ""

  roman = roman + "M" * (num / 1000) #how many M's
  roman = roman + "D" * (num % 1000 / 500) #how many D's remain after M's done 
  roman = roman + "C" *(num % 500 / 100) # how many C's after D's done etc
  roman = roman + "L" *(num % 100 / 50) 
  roman = roman + "X" *(num % 50 / 10) 
  roman = roman + "V" *(num % 10 / 5) 
  roman = roman + "I" *(num % 5 / 1) 
  roman
  # you can multiply a string with an integer n . To repeat the string n times.

end
puts old_roman_numeral(1481)







			

