def roman_to_integer roman

	roman = roman.upcase # to make sure everything is upcase before testing

	hash = { 1000 => "M",
			 900 => "CM",
			 500 => "D",
			 400 => "CD",
			 100 => "C",
			 90 => "XC",
			 50 => "L",
			 40 => "XL",
			 10 => "X",
			 9 => "IX",
			 5 => "V",
			 4 => "IV",
			 1 => "I" }

	hash = hash.invert # to swap the values with the keys, lazy to rebuild it

	check = hash.keys  # isolate the keys to check on them
	splitter = roman.upcase.chars  # array for each roman numeral

	result = 0

	if splitter.map {|x| check.include?(x)}.include?(false) # if hash.keys include any letter from the roman string return false 
		raise ArgumentError.new("Not a valid roman numeral")
	else
		hash.each do |key, value|
			while roman.index(key) == 0  # while the current key matches the begging of our roman string
				result += value	     # add the corresponding value to the result integer
				roman.slice!(key)    # and delete the previously found roman letters and start all over again.
			end
		end	
	end

	result
end
