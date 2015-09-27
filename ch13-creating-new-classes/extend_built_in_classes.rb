class Integer
	def to_roman 
		if (self > 0 && self <3001)
			roman_num = ""
	 	m = self/1000
		 	if m == 1
		 		roman_num = roman_num + "M"
		 	elsif m == 2
		 		roman_num = roman_num + "MM"
		 	elsif m == 3
		 		roman_num = roman_num + "MMM"
		 	end


		d = (self % 1000) / 500
		 	if d == 1
		 		roman_num = roman_num + "D"
		 	end


		c = ((self % 1000) % 500) / 100
		 	if c == 1
		 		roman_num = roman_num + "C"
		 	elsif c == 2
		 		roman_num = roman_num + "CC"
		 	elsif c == 3
		 		roman_num = roman_num + "CCC"
		 	elsif c == 4
		 		roman_num = roman_num + "CCCC"
		 	end
	 

	 	l = (((self % 1000) % 500) % 100) / 50
	 		if l == 1
	 			roman_num = roman_num + "L"
	 		end
	 

	 	x = ((((self % 1000) % 500) % 100) % 50) /10
	 		if x == 1
	 			roman_num = roman_num + "X"
	 		elsif x == 2
	 			roman_num = roman_num + "XX"
	 		elsif x == 3
	 			roman_num = roman_num + "XXX"
	 		elsif x == 4
	 			roman_num = roman_num + "XXXX"
	 		end
	 

	 	v = (((((self % 1000) % 500) % 100) % 50) % 10) / 5
	 		if v == 1
	 			roman_num = roman_num + "V"
	 		end
	 

	 	i = ((((((self % 1000) % 500) % 100) % 50) % 10) % 5) / 1
	 		if i == 1
	 			roman_num = roman_num + "I"
	 		elsif i == 2
	 			roman_num = roman_num + "II"
	 		elsif i == 3
	 			roman_num = roman_num + "III"
	 		elsif i == 4
	 			roman_num = roman_num + "IIII"
	 		end
			return roman_num
	 	else
	 		"Number is not between 1 and 3000"
	 	end	
	end
end

class Integer
	def factorial 
		if self < 0
			return "You can't return the factorial of a negative number"
		end

		if self <= 1
			1
		else
			return self*(self-1).factorial
		end
	end
end
#puts 5.factorial
#puts 6.to_roman