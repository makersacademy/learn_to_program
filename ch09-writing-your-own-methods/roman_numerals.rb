def roman_numeral num
  
  	numeral_hash = {'M'=>1000, 'CM'=>900, 'D'=>500, 'CD'=>400, 'C'=>100, 'XC'=>90, 'L'=>50, 'XL'=>40,'X'=>10, 'IX'=>9, 'V'=>5, 'IV'=>4, 'I'=>1}
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