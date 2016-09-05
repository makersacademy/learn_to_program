def old_roman_numeral num
	roman_numeral = ''
	letters_and_numbers = {'M' => 1000, 'D' => 500, 'C' => 100, 'L' => 50, 'X' => 10, 'V' => 5, 'I' => 1}
	letters_and_numbers.each do |letter,number|
		roman_numeral += letter * (num / number)
		num = num % number
	end
	return roman_numeral
end


