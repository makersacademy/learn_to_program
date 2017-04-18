def roman_to_integer roman
	romanNums = {
		1    => 'I',
		4    => 'IV',
		5    => 'V',
		9    => 'IX',
		10   => 'X',
		40   => 'XL',
		50   => 'L',
		90   => 'XC',
		100  => 'C',
		400  => 'CD',
		500  => 'D',
		900  => 'CM',
		1000 => 'M'
	}

	roman = roman.upcase
	result = 0
	romanNums.values.reverse.each do |r|
		while roman.start_with? r
			roman = roman.slice(r.length, roman.length)
			result += romanNums.key r
		end
	end
	result

end