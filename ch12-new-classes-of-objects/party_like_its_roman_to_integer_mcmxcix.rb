def roman_to_integer(roman) #example roman: V (which is 5)
  digit_vals = { 
  	'i' => 1,
  	'v' => 5,
  	'x' => 10,
  	'l' => 50,
  	'c' => 100,
  	'd' => 500,
  	'm' => 1000} #here we create a hash to store all the roman numerals

  	total = 0 #create a new variable, 'total' which is equal to 0
  	prev = 0 #create another new variable, 'prev' which is equal to 0
  	index = roman.length - 1 #new variable, index, is therefore equal to 0 (length of V - 1)
  	while index >= 0 #while 0 is more than/equal to 0
  		c = roman[index].downcase #new variable, c, is therefore equal to 'v' (downcase of 'V')
  		index -= 1 #index now becomes -1
  		val = digit_vals[c] #new variable, val, is therefore equal to 5
  		if !val #i.e if the roman numeral entered does not produce a value from the hash i.e. not exist in the hash
  			puts "This is not a valid roman numeral"
  			return #program ends
  		end

  		if val < prev #if 5 is less than 0
  			val = val * -1
  		else
  			prev = val #prev is now equal to 5
  		end
  		total = total + val #total now equals 5
  end

  total #returns the answer: 5
end