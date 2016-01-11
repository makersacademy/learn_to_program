
# I = 1
# V = 5
# X = 10
# L = 50
# C = 100
# D = 500
# M = 1000


#list values in array
Values = [
  ["M", 1000], 
  ["D", 500], 
  ["C", 100], 
  ["L", 50], 
  ["X", 10], 
  ["V", 5], 
  ["I", 1], 
]

def old_roman_numeral(num)
#define method to take a number and translate to roman numeral
  roman = ""
#define placeholder variable, this is what to return later
  Values.each do |letter, value|
  	# for each element in the values array, assign letter & value variables (i.e. run the code below 7 times)
    roman += letter*(num / value)
    # take the number passed in, and divide by the value, and times by the letter variable.
    # i.e 3/1000 = 0, so no Ms are added to 'roman', and so on, until num/value is > 1, and then it will start to add the appropriate letters
    # += takes left operand, adds to right operand, and adds the result to the 'roman' variable (appending to variable), (using just = would reasign the value each time)
    num = num % value
    # num % value finds the remainder of the number to get numerals for (i.e. 1012%1000, 'M' is already added to 'roman', and there is a remainder of 12 to find numerals for)
  	end
  	#return value of roman
  return roman
end


puts old_roman_numeral(3)
