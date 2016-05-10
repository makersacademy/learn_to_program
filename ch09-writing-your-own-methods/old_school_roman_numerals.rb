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
# the numer is divisible by 1000. A number less than 1000 will return 0, thus meaning that no characters will
# be added to the numeral string. If the number is larger than 1000 then ruby will return the number of times
# that 1000 fits into the number and add that many chacters to the string, e.g.

# 	3526 / 1000
# => 3
# 	3 * 'M'
# => 'MMM'

	numeral << 'D' * (num % 1000 / 500)

# For the next potential numeral 'D' we need to check to what extent the number is divisible by 100 BUT our
# previous digit is now irrelevant. For example, if our number was 3526 then the first digit '3' is now out
# of the picture because we have already added its relevant numerals to the string. We can remove it by
# using modulus. 3526 % 1000 = 526. We then move on and check to what extent our number is divisible by 500.

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

	numeral

# Finally we call ruby to display our newly created string of numerals.

end