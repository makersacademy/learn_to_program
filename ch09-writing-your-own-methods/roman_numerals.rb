def roman_numeral num
  roman_numeral = ''
	letters_and_numbers = {'M' => 1000, 'D' => 500, 'C' => 100, 'L' => 50, 'X' => 10, 'V' => 5, 'I' => 1}
	letters_and_numbers.each do |letter,number|
		if letter != 'M' && num.to_s.chars.first.to_i == 4 || num.to_s.chars.first.to_i == 9
			roman_numeral += letter 
			print i
		else
			roman_numeral += letter * (num / number)
		end
		num = num % number
	end
	print roman_numeral
end

roman_numeral(9)