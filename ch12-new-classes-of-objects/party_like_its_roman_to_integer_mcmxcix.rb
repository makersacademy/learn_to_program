def roman_to_integer roman # Method takes a roman digit

digit_vals = {'i' => 1, # creates a hash with key being the roman digit and value being the integer

				'v' => 5,

				'x' => 10,

				'l' => 50,

				'c' => 100,

				'd' => 500,

				'm' => 1000}

total = 0 # creates a counter called 'total' asigning it to the value of 0
prev = 0 # creates another counter called 'prev' and assigning it to 0
index = roman.length - 1 # roman.length finds the length of the string and minuses 1 to find the index
while index >= 0 # while loop takes the current index and if it is less or = to 0 loops
	c = roman[index].downcase # takes the roman numeral string at the -l index puts it to downcase and saves it as variable c
	index = index - 1  # asigns index to the next index up. 
	val = digit_vals[c] # This take the hash and places the key string that has been found at the specified index. It places it 
	# in the square brackets so that it can find its value pair which will be a integer. It then asigns it to this intiger. 
	if !val # if this values has not been found in the hash
		puts 'This is not a valid roman numeral!' # then it returns this message. 
		return # return means that the while loop ends here. 
	end

	if val < prev # at this moment prev has been set to 0 and val will be one of the hash values which from 5 up to 1000
		val = val * -1 # This creates a negative number and asigns it to the variable val
	else
		prev = val # prev is no asigned to this negative value
	end
	total = total + val # total is this negative value plus the value of the total which is currently at 0 but will be eventually
	# be a negative value
  end

 total
end

puts(roman_to_integer('mcmxcix'))

puts(roman_to_integer('CCCLXV'))