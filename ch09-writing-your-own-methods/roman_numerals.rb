def roman_numeral num
romansplit = Hash.new
romansplit['M'] = 1000
romansplit['D'] = 500
romansplit['C'] = 100
romansplit['L'] = 50
romansplit['X'] = 10
romansplit['IX'] = 9
romansplit['V'] = 5
romansplit['IV'] = 4
romansplit['I'] = 1

final_output = ""
romansplit.each do |string, int|
	unless num < int
		strcount = num/int
		num = num%int
		output = string * strcount
		final_output = final_output << output
	end
end
return final_output
end