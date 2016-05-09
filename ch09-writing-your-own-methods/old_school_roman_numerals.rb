def old_roman_numeral num
	romanNums = {
		1    => 'I',
		5    => 'V',
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

	result = ''
	romanNums.keys.reverse.each do |n|
		while num >= n
			num -= n
			result += romanNums[n]
		end
	end
	result
end

