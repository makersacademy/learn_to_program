def roman_numeral num

rString = ""

romanz = [["M", 1000],["CM",900],["D", 500], ["C", 100], ["XC", 90], ["L", 50], ["X", 10], ["IX",9],["V", 5],["IV", 4],["I", 1]]

romanz.each_with_index do | x , i |
	if num / romanz[i][1] >= 1 
	
	rString << romanz[i][0] * (num / romanz[i][1])
	
	num = num % romanz[i][1]
	end
   num
end

return rString

end

puts roman_numeral(4)
puts roman_numeral(100)
puts roman_numeral(1998)
puts roman_numeral(2485)
puts roman_numeral(4)