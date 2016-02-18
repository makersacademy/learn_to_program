def roman_to_integer roman

	hash_of_letters = { 'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50, 'C' => 100, 'D' => 500, 'M' => 1000}

	# get last letter, see if it has a letter smaller than it in front
	# if so, subtract that from the letter
	
	final_value = 0

	len = roman.length
	x = 1
	until x == ( len + 1 )
		if (roman[-(x+1)] != nil) && ( hash_of_letters[roman[-(x+1)].upcase] < hash_of_letters[roman[-x].upcase] )
			final_value += ( hash_of_letters[roman[-x].upcase] - hash_of_letters[roman[-(x+1)].upcase] )
			x += 2
		else
			final_value += hash_of_letters[roman[-x].upcase]
			x += 1
		end
	end

	final_value
end
