#Write a method that when passed an integer between 1 and 3000 (or so)
#returns a string containing the proper old- school Roman numeral.
 #In other words, old_roman_numeral 4 should return 'IIII'.
 #Make sure to test your method on a bunch of different numbers.
#Hint: Use the integer division and modulus methods on page 32.
#For reference, these are the values of the letters used:
#I = 1 V = 5 X = 10 L = 50 C = 100 D = 500 M = 1000

def old_roman_numeral num
numerals = ""
numerals << "M" * (num / 1000)
numerals << "D" * (num % 1000 /500)
numerals << "C" * (num % 500 / 100)
numerals << "L" * (num % 100 / 50)
numerals << "X" * (num % 50 / 10)
numerals << "V" * (num % 10 / 5)
numerals << "I" * (num % 5 / 1)
numerals
end
