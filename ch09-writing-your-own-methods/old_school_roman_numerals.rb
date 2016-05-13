def old_roman_numeral num
	numeral = ''

	numeral << 'M' * (num / 1000)
	numeral << 'D' * (num % 1000 / 500)
	numeral << 'C' * (num % 500 / 100)
	numeral << 'L' * (num % 100 / 50)
	numeral << 'X' * (num % 50 / 10)
	numeral << 'V' * (num % 10 / 5)
	numeral << 'I' * (num % 5 / 1)
	numeral

end






def old_roman_numeral num

# The aim here is to find a way of focusing on each individual digit of the number and working out whether
# it is divisible by each of the roman numeral values.

	numeral = ''

# Creating an empty string to place our final number

	numeral << 'M' * (num / 1000)

# The largest numeral we are using is 'M', which has a value of 1000. Here we ask ruby to check to what extent
# the numer is divisible by 1000, i.e. How many 1000s are there in this number? A number less than 1000 will 
# return 0, thus meaning that no characters will be added to the numeral string. If the number is larger than 
# 1000 then ruby will return the number of times that 1000 fits into the number and add that many chacters to 
# the string, e.g.

# 	3526 / 1000
# => 3
# 	3 * 'M'
# => 'MMM'

	numeral << 'D' * (num % 1000 / 500)

# For the next potential numeral 'D' we need to check to what extent the number is divisible by 100 BUT our
# previous number that we divided by (1000) is now irrelevant. For example, if our number was 3526 then the 
# three one thousands within this number are now out of the picture because we have already added its relevant 
# numerals to the string. We can remove the thousands by using modulus. 3526 % 1000 = 526. We then move on and 
# check to what extent our number is divisible by 500.

# 	526 / 500
# => 1
# 	1 * 'D'
# => 'D'

	numeral << 'C' * (num % 500 / 100)
	numeral << 'L' * (num % 100 / 50)
	numeral << 'X' * (num % 50 / 10)
	numeral << 'V' * (num % 10 / 5)
	numeral << 'I' * (num % 5 / 1)
	
# The pattern above continues for each of the different numerals down to one.
#
# IMPORTANT NOTE!! : We are lucky in this case
# that 500, 50, and 5 divide into the numbers above them perfectly (modulus = 0). If you had a numeral that was
# assigned to the number 30 then when we get to the stage in which we have checked how many times the number (num)
# divides by it e.g. 336 % 50 /30 = 1  ----next-line---> 336 % 30/10 ..... it would not remove all the multiples
# above it (50, 100, 500, 1000) properly because it does not divide into them without excess. Whereas here:
# 	10 % 5 = 0
# 	50 % 10 = 0
# 	100 % 50 = 0
# 	500 % 100 = 0
# 	1000 % 500 = 0
# Therefore, this technique will not work with modern roman numerals and we would instead need to renew the number
# after each division and modulo so that the previous numbers we have divided by are permanently out ouf the equation
# and do not matter any more.


	numeral

# Finally we ask ruby to display our newly created string of numerals.

end