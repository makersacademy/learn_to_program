def roman_numeral num
	num = num.to_i
	if (num > 0 && num <3001)
		roman_num = " "
 	m = num/1000
	 	if m == 1
	 		roman_num = roman_num + "M"
	 	elsif m == 2
	 		roman_num = roman_num + "MM"
	 	elsif m == 3
	 		roman_num = roman_num + "MMM"
	 	end


	d = (num % 1000) / 500
	 	if d == 1
	 		roman_num = roman_num + "D"
	 	end


	c = ((num % 1000) % 500) / 100
	 	if c == 1
	 		roman_num = roman_num + "C"
	 	elsif c == 2
	 		roman_num = roman_num + "CC"
	 	elsif c == 3
	 		roman_num = roman_num + "CCC"
	 	elsif c == 4
	 		roman_num = roman_num + "CD"
	 	end
 

 	l = (((num % 1000) % 500) % 100) / 50
 		if l == 1
 			roman_num = roman_num + "L"
 		end
 

 	x = ((((num % 1000) % 500) % 100) % 50) /10
 		if x == 1
 			roman_num = roman_num + "X"
 		elsif x == 2
 			roman_num = roman_num + "XX"
 		elsif x == 3
 			roman_num = roman_num + "XXX"
 		elsif x == 4
 			roman_num = roman_num + "XL"
 		end
 

 	v = (((((num % 1000) % 500) % 100) % 50) % 10) / 5
 		if v == 1
 			roman_num = roman_num + "V"
 		end
 

 	i = ((((((num % 1000) % 500) % 100) % 50) % 10) % 5) / 1
 		if i == 1
 			roman_num = roman_num + "I"
 		elsif i == 2
 			roman_num = roman_num + "II"
 		elsif i == 3
 			roman_num = roman_num + "III"
 		elsif i == 4
 			roman_num = roman_num + "IV"
 		end

 	puts roman_num
 	else
 		"Number is not between 1 and 3000"
 	end	
end