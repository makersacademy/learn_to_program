def roman_to_integer roman
  
	numeral_hash = {'M'=>1000, 'CM'=>900, 'D'=>500, 'CD'=>400, 'C'=>100, 'XC'=>90, 'L'=>50, 'XL'=>40,'X'=>10, 'IX'=>9, 'V'=>5, 'IV'=>4, 'I'=>1}

	current_chunk = ''
	return_int = 0	
	counter = 0

	while counter < roman.length
		current_chunk = roman[counter, 2].upcase
		if numeral_hash.include?(current_chunk)
			return_int += numeral_hash[current_chunk]
			counter += 2
		else
			return_int += numeral_hash[current_chunk[0]]
			counter += 1
		end
	end

return_int

end

puts roman_to_integer('MCMXCIX')