# Write a method that when passes an integer between 1 and 3000 or so
# return a string containing the proper old-school roman numerals.
# In other words, old_roman_numeral 4 should return 'IIII'.
# Hint, use integer division and modulus methods on pg 32.
# I = 1 V = 5 X = 10 L = 50
# C = 100 D = 500 M = 1000

# Revised 
def old_roman_numeral num
  orn = ''
  	orn += 'M' * (num/1000)
  	num = num % 1000
  	orn += 'D' * (num/500)
  	num = num % 500
  	orn += 'C' * (num/100)
  	num = num % 100
  	orn += 'L' * (num/50)
  	num = num % 50
  	orn += 'X' * (num/10)
  	num = num % 10
  	orn += 'V' * (num/5)
  	num = num % 5
  	orn += 'I' * (num)
  	return orn
end

# def old_roman_numeral num
# orn = ""
#     while num != 0
#         if num % 1000 == 0
#             num -= 1000
#             orn += "M"
#             next
#         elsif num % 500 == 0
#             num -= 500
#             orn += "D"
#             next
#         elsif num % 100 == 0
#             num -= 100
#             orn += "C"
#             next
#         elsif num % 50 == 0
#             num -= 50
#             orn += "L"
#             next
#         elsif num % 10 == 0
#             num -= 10
#             orn += "X"
#             next
#         elsif num % 5 == 0
#             num -= 5
#             orn += "V"
#             next
#         else
#             num -= 1
#             orn += "I"
#         end
#     end
#     orn.reverse #.reverse required because program calculates the digits in reverse order
# end



# Chris Pine solution:
#
# def old_roman_numeral num
#   raise 'Must use positive integer' if num <= 0     >uses raise method to ensure num is >= 0
#
#   roman = ''    >set up empty string
#
#   roman << 'M' * (num / 1000)   > number divided by 1000, that numer * M, that number of M's pushed into 'roman', then...
#   roman << 'D' * (num % 1000 / 500)     >modulus of remining number (num%1000) divided by 500, that number of D's pushed into 'roman', then...
#   roman << 'C' * (num % 500 / 100)      >modulus of remining number (num%500) divided by 100, that number of C's pushed into 'roman', then...
#   roman << 'L' * (num % 100 / 50)       >modulus of remining number (num%100) divided by 50, that number of L's pushed into 'roman', then...
#   roman << 'X' * (num % 50 / 10)        >modulus of remining number (num%50) divided by 10, that number of X's pushed into 'roman', then...
#   roman << 'V' * (num % 10 / 5)         >modulus of remining number (num%10) divided by 5, that number of V's pushed into 'roman', then...
#   roman << 'I' * (num % 5 / 1)          >modulus of remining number (num%5) divided by 1, that number of I's pushed into 'roman', then...
#
#   roman               > return roman string
# end
