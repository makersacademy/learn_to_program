#expanded engish number 
def english_number number
	if number < 0 
		return "Please enter a number that isn'negative"
	end 
	if number == 0 
		return "zero"
	end 
	num_string = "" #String for the outwritten numbers
	ones_place = ["one","two","three", "four", "five", "six","seven","eight","nine"]
	tens_place = ['ten', 'twenty', 'thirty', "forty", "fifty", "sixty","seventy", "eighty",
				 "ninety"]
	teenagers = ["eleven", "twelve", "thirteen","fourteen", 
			"fifteen", "sixteen","seventeen", "eighteen", "nineteen"]
	endings = [["hundred", 2],
				["thousand",3],
				["million", 6],
				["billion", 9],
				["trillion",12]] # array of arrays for the endings.
					# one array of endings consists of the ending name: hundred thousand 
					# million, billion etc. and the other part shows the amount of zeros
					# in other words how often you can divide it by 10
					# In sciences, eg, huge numbers are written as 10^60 
					# by taking the digits, we can compare the given number 
					# and take the endings according to that. 
					# We take the endingname to the string  
	left = number # similar to the program without recursion. We have to see how much is left
	# now we can divide the number by all endings. If it is smaller than trillion it will be 0 
	# but the array endings will be smaller. Then we start again. With a new number 
	while endings.length > 0 
		ending_array = endings.pop #takes the last array from array of arrays. 
		ending_name  = ending_array[0] #index 0 = name 
		#ending_digit = ending_array[1] this way it would not be comparable.
		# for hundreds it would be 2. So I have to take 10 square the amount of zeros
		ending_digit = 10** ending_array[1]
		write = left/ending_digit #how many zeros are left after taking the first one off
		left = left - write*ending_digit #without this line, the number we use is not changing
									# in a recursion we would get the same result forever
		# now we have to see if the number is large enough to be eg trillion or not 
		if write > 0 
			ending = english_number write # one hundred (hundred has to be in the end)
			num_string = num_string + ending + " " + ending_name 
			if left > 0 
				num_string = num_string + " " #just to have space between the numbers
			end 
		end 
	end 
	#after the while iterator there is no array anymore, meaning we have to add the 
	# teenagers, tens and ones. similar to the exercise w/o recursion

	 #copied from exercise in book

	write = left/10 # How many tens left?
	left = left - write*10 # Subtract off those tens.
	if write > 0
		if ((write == 1) and (left > 0))
		# Since we can't write "tenty-two" instead of
		# "twelve", we have to make a special exception
		# for these.
		num_string = num_string + teenagers[left-1]
		#  The "-1" is because teenagers[3] is
		# 'fourteen', not 'thirteen'.
		# Since we took care of the digit in the
		# ones place already, we have nothing left to write.
		left = 0
		else
			num_string = num_string + tens_place[write-1]
			# The "-1" is because tens_place[3] is
			# 'forty', not 'thirty'.
			end
		if left > 0
		# So we don't write 'sixtyfour'...
			num_string = num_string + '-'
		end
	end
	write = left # How many ones left to write out?
	left = 0 # Subtract off those ones.
	if write > 0
		num_string = num_string + ones_place[write-1]
		# The "-1" is because ones_place[3] is
		# 'four', not 'three'.
	end
	# Now we just return "num_string"...
num_string
end

puts english_number(999)
	



