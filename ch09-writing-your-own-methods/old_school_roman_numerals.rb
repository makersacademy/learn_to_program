def old_roman_numeral num

  roman = '' # Creating an empty string pointed to by roman

  roman = roman + 'M' * (num / 1000) #For an example of 1999 adds 'M' once to empty string roman because 1999 / 1000 = 1
  roman = roman + 'D' * (num % 1000 / 500) #(For modulo) The remainder of 1999 / 1000 is 999. 999/500 = 1. Add 'D' once to roman after 'M'
  roman = roman + 'C' * (num % 500 / 100)# The rest does the same as above for each roman numeral
  roman = roman + 'L' * (num % 100 / 50)
  roman = roman + 'X' * (num % 50 / 10)
  roman = roman + 'V' * (num % 10 / 5)
  roman = roman + 'I' * (num % 5/ 1)


  roman # Returns the old roman numeral


end