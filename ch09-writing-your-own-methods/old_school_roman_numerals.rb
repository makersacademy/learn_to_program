def old_roman_numeral num

rString = ""

romanz = [["M", 1000], ["D", 500], ["C", 100], ["L", 50], ["X", 10], ["V", 5],["I", 1]]

romanz.each_with_index do | x , i |
	if num / romanz[i][1] >= 1 
	
	rString << romanz[i][0] * (num / romanz[i][1])
	
	num = num % romanz[i][1]
	
	end
   num
end

return rString

end


puts old_roman_numeral(100)
puts old_roman_numeral(1998)
puts old_roman_numeral(2485)