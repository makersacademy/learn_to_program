def old_school_numeral (x)
	if x < 0
		return "Please enter a number greater than zero"
	end 
	if x > 30000
		"Please enter a number smaller than 3000"
	end 
	roman_numeral = ""
	rest = x 
	write = rest/1000
	rest = x%1000
	if write > 0 
		if write == 1 
			roman_numeral = roman_numeral + "M"
		elsif write == 2
			roman_numeral = roman_numeral + "MM"
		elsif write == 3 
			roman_numeral = roman_numeral + "MMM"
		end 
	end 
	write = rest/500
	rest = rest%500
	if write > 0 
		roman_numeral = roman_numeral + "D"
	end 
	write = rest/100
	rest = rest%100
	if write > 0 
		if write == 1 
			roman_numeral = roman_numeral + "C"
		elsif write == 2
			roman_numeral = roman_numeral + "CC"
		elsif write == 3
			roman_numeral = roman_numeral + "CCC"
		elsif write == 4
			roman_numeral = roman_numeral + "CCCC"
		end 
	end 
	write = rest/50
	rest = rest%50
	if write > 0 
		roman_numeral = roman_numeral + "L"
	end 
	write = rest/10 
	rest = rest%10
	if write > 0 
		if write == 1 
			roman_numeral = roman_numeral + "X"
		elsif write == 2
			roman_numeral = roman_numeral + "XX"
		elsif write == 3
			roman_numeral = roman_numeral + "XXX"
		elsif write == 4
			roman_numeral = roman_numeral + "XXXX"
		end 
	end 
	write = rest/5
	rest = rest%5
	if write > 0 
		roman_numeral = roman_numeral + "V"
	end
	write = rest 
	if write > 0 
		if write == 1 
			roman_numeral = roman_numeral + "I"
		elsif write == 2
			roman_numeral = roman_numeral + "II"
		elsif write == 3
			roman_numeral = roman_numeral + "III"
		elsif write == 4
			roman_numeral = roman_numeral + "IIII"
		end 
	end 
end 
puts old_school_numeral(2999)



			

