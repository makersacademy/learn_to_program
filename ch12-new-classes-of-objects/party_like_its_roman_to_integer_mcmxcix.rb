def roman_to_integer roman
		 result = 0
		 singles = {"M" => 1000, "D" => 500, "C" => 100, "L"=> 50, "X" => 10, "V" => 5, "I" => 1}   

		double = {"CM" => 900, "CD" => 400, "XC" => 90, "XL" => 40,  "IX" => 9, "IV" => 4}

		roman = roman.upcase
		something = roman.split("")

		something.each do |key|
			unless singles.include?(key)
		  		puts "not valid roman numeral"
			end
		end
			

		while roman.length > 0
			double.each do |key, value|
				if roman.include?(key)
		 			result += value
		 			roman.slice!(key)
			 	end
		 	end
		

		 	singles.each do |key, value|
		 		if roman.include?(key)
		 			result += value
		 			roman.slice!(key)
				end 
			
			end 

		end 
	result
 end

 puts roman_to_integer("lxxxix")

