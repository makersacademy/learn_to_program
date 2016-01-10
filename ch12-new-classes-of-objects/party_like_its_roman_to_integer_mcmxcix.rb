def roman_to_integer roman

  	roman.downcase!

 	#This is our hash which maps the roman letter to the decimal number.
  	hash = { 'i' => 1,
  		    'iv' => 4,
  			'v' => 5,
  			'ix' => 9,
  			'x' => 10,
  			'xl' => 40,
  			'l' => 50,
  			'xc' => 90,
  			"c" => 100,
  			'cd' => 400,
  			'd' => 500,
  			'cm' => 900,
  			'm' => 1000}

  	#In order to parse the roman number, we want to traverse the array of chars,
  	#look up the value matching the characters and add them up.
  	#We must pay attention, though, at some special cases like 'IX' or 'XL' which
  	#are numbers composed by two characters. To solve this issue, we will use the
  	#fact that the numbers are sorted from the least to the maximum EXCEPT for those
  	#special cases mentioned above.

  	chars = roman.chars
  	#length of the array, will be the starting point of our loop.
  	l = chars.size

  	#this is the accumulator of all the numbers we will find
  	sum = 0
  	#loop index
  	index = l-1
  	#this will be the number we're currently visiting
  	curr_number = 0
  	#and this one will be the one we have visited at the step before
  	prev_number = 0

  	prev_char = ''
  	curr_char = ''
  	while index >= 0
  		#Save the last char before we update it at the next row
  		prev_char = curr_char
  		#char at current index
  		curr_char = chars[index]
  		#Save the last number before we update it at the next row (we could also
  		#recalculate it with hash[prev_char])
  		prev_number = curr_number
  		#look up the number matching the current char 
  		curr_number = hash[curr_char]

  		if curr_number == nil
  			puts "the roman number is invalid"
  			return -1
  		end
  		if hash[curr_char + prev_char] != nil
  			sum -= prev_number
  			sum += hash[curr_char + prev_char]
  		else
  			sum += curr_number
  		end
  		index -= 1
  	end
  	return sum
end

ok