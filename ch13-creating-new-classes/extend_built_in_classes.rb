class Integer
def factorial

if self <= 1

1

else

self * (self-1).factorial

end

end

def to_roman

num = self

roman_num = ''
roman_num += "M" * (num / 1000)
roman_num += "D" * ((num % 1000) / 500)
roman_num += "C" * ((num % 500) / 100)
roman_num += "L" * ((num % 100) / 50)
roman_num += "X" * ((num % 50) / 10)
roman_num += "V" * ((num % 10) / 5)
roman_num += "I" * ((num % 5) / 1)
end
  
end







class Array
def shuffle 

arr = self
shuf = []

while arr.length > 0
# Randomly pick one element of the array.
#While elements still exist in "arr", the while loop will continue to add elements to the "shuf" array until nothing is left in "arr"

rand_index = rand(arr.length)
# Now go through each item in the array,
# putting them all into new_arr except for the
# randomly chosen one, which goes into shuf.

curr_index = 0
new_arr = []

arr.each do |item|
if curr_index == rand_index
	shuf.push item
else
	new_arr.push item
end
	curr_index = curr_index + 1
end
# Replace the original array with the new,
# smaller array.

arr = new_arr

end
shuf
end

end


=begin
#work in progress


def factorial num 

	number_of_units = []
	divisor = num / num 
	while number_of_units.length < num
		number_of_units.push(divisor)
		divisor += 1
	end

number_of_units.each do |x|
	if x < num 
	
# multiple "x" by the sum of the previous iteration

end
end

end
=end
