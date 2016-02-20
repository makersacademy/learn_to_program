# Write a method that when passed an integer
# between 1 and 3000 (or so) returns a string containing the proper old-
# school Roman numeral. In other words, old_roman_numeral 4 should return
#'IIII'. Make sure to test your method on a bunch of different numbers. Hint:
#
# Use the integer division and modulus methods on page 32.


def roman_numeral num
  rn = ''
	rn += "M" * (num/1000)
	num = num % 1000
	if num % 1000 >= 900
		rn += "CM"
		num -= 900
	end
	rn += 'D' * (num/500)
	num = num % 500
	if num % 500 >= 400
		rn += "CD"
		num -= 400
	end
	rn += 'C' * (num/100)
	num = num % 100
	if num % 100 >= 90
		rn += "XC"
		num -= 90
	end
	rn += 'L' * (num/50)
	num = num % 50
	if num % 50 >= 40
		rn += "XL"
		num -= 40
	end
	rn += "X" * (num/10)
	num = num % 10
	if num % 10 >= 9
		rn += "IX"
		num -= 9
	end
	rn += 'V' * (num/5)
	num = num % 5
	if num % 5 >= 4
		rn += "IV"
		num -= 4
	end
	rn += 'I' * (num)
	return rn
end

# Alternative approach:
# Iterating over the array and seeing if the num can be divided by the numbers.
# Trying to push the number through the array and by the time it get to the other end there should be no number left
# def roman_numeral num
#
# rString = ""
#
# romanz = [["M", 1000],["CM",900],["D", 500], ["C", 100], ["XC", 90], ["L", 50], ["X", 10], ["IX",9],["V", 5],["IV", 4],["I", 1]]
#
# romanz.each_with_index do | x , i |
#     if num / romanz[i][1] >= 1      #2D array, effectively 2 arrays, [i]
#
#     rString << romanz[i][0] * (num / romanz[i][1]) #pushing the div results into rString
#
#     num = num % romanz[i][1] #how much of the number is left, reduce the number, pass it through the rest of the array
#     end
#   num
# end
#
# return rString
#
# end
