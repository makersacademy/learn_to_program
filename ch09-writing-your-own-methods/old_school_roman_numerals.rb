def old_roman_numeral num

	numeral_hash = {'M'=>1000, 'D'=>500,'C'=>100, 'L'=>50,'X'=>10, 'V'=>5,'I'=>1}
	return_string = ''

	numeral_hash.each do |key, value|
		if num >= value
  			multiplier = num / value
  			multiplier.times {return_string += key}
  			num -= multiplier * value
  		end
	end

	return_string

end