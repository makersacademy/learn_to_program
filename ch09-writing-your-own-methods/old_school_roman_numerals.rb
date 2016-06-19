Old_Roman_Numerals = {'M' => 1000, 'D' => 500, 'C' => 100, 'L' => 50,
											'X' => 10, 'V' => 5, 'I' => 1}

def old_roman_numeral num
	old_roman = ''
	Old_Roman_Numerals.each do |k,v|
		(num / v).times do
			old_roman += k; num = num - v
		end
	end
	return old_roman
end

puts old_roman_numeral gets.chomp.to_i
