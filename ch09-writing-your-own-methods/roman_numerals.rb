#modern roman numerals
def roman_numeral (x)
	if x < 0
		return "Please enter a number greater than zero"
	end 
	if x > 30000
		"Please enter a number smaller than 3000"
	end 
	roman = ""
	roman = roman +"M" *(x/1000)
	roman = roman +"D" *(x%1000/500)
	roman = roman +"C" *(x%500/100)
	roman = roman +"L" *(x%100/50)
	roman = roman +"X" *(x%50/10)
	roman = roman +"V" *(x%10/5)
	roman = roman +"I" *(x%5/1)
	if roman.count("C") == 4
		roman.gsub!("CCCC","CD")
	end 
	if roman.count("X")== 4
		roman.gsub!("XXXX", "XL")
	end 
	if roman.count("I") == 4
		roman.gsub!("IIII","IV")
	end 
	if roman.count("VIV") > 0
		roman.gsub!("VIV","IX")
	end 
	roman 
end 

puts roman_numeral(9)