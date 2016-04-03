def roman_numeral num
    roman_numeral =  []

	if num.to_s.length == 4
		roman_numeral << 'M'
		num = num % 1000
	end


	if num.to_s.length == 3
		num100 = num / 100
			if  num100 < 4 
				num100.times do roman_numeral << 'C' end
			elsif num100 == 4
				roman_numeral << 'CD'
			elsif num100 >= 5 && num100 < 9
				roman_numeral << 'D'
				remainder100 = num100 - 5
				remainder100.times do roman_numeral << 'C' end
			elsif num100 == 9
				roman_numeral << 'CM'
			end
		num = num % 100
	end


	if num.to_s.length == 2
		num10 = num / 10
			if num10 == 9
				roman_numeral << 'XC'
			elsif num10 == 4
				roman_numeral << 'XL'
			elsif num10 < 4 
				num10.times do roman_numeral << 'X' end
			elsif num10 >= 5 
				roman_numeral << 'L'
				remainder10 = num10 - 5
				remainder10.times do roman_numeral << 'X' end
			end
		num = num % 10
	end

	if num <= 9
		if num == 9 
			roman_numeral << 'IX'
		elsif num == 4 
			roman_numeral << 'IV'
		elsif num < 4
			num.times do roman_numeral << 'I' end
		elsif num >= 5 
			roman_numeral << 'V'
			remainder = num - 5
			remainder.times do roman_numeral << 'I' end
		end
	end

return roman_numeral.join.to_s
end