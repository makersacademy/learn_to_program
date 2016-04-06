def english_number number
  special_cases = {
  			0 => "zero",
			1 => "one",
			2 => "two",
			3 => "three",
			4 => "four",
			5 => "five",
			6 => "six",
			7 => "seven",
		 	8 => "eight",
			9 => "nine",    
			10 => "ten",
		 	11 => "eleven",
			12 => "twelve",
			13 => "thirteen",
			14 => "fourteen",
			15 => "fifteen",
			16 => "sixteen",
			17 => "seventeen",
			18 => "eighteen",
			19 => "nineteen" } 
		 
		twenty = {  20 => "twenty" }

		thirty = {  30 => "thirty" }

		forty = { 40 => "forty" }	

		fifty = {  50 => "fifty" }

		sixty = {  60 => "sixty"  }

		seventy = {  70 => "seventy" }	

		eighty = {  80 => "eighty" }	

		ninety = {  90 => "ninety" }	

		hund = { 100 => "one hundred" }

		thou = { 1000 => "one thousand" }

		ten_thou = {10000 => "ten thousand" }

		hun_thou = { 100000 => "one hundred thousand" }

		mill = { 1000000 => "one million" }


			if number < 20
				return special_cases[number]

		 	elsif number < 30 
				last_number = number.to_s[1]    
		 		
		 		if last_number == "0"
		 			return  twenty[20]
		 		else
		 			return twenty[20] + "-"  + special_cases[last_number.to_i]
		 		end
		 	elsif number < 40
		 		last_number = number.to_s[1]
		 		if last_number == "0"
		 			return  thirty[30]
		 		else
		 			return thirty[30] + "-" + special_cases[last_number.to_i]
		 		end
		 	elsif number < 50
		 		last_number = number.to_s[1]
		 		if last_number == "0"
		 			return  forty[40]
		 		else
		 			return forty[40] + "-" + special_cases[last_number.to_i]
		 		end	
		 	elsif number < 60
		 		last_number = number.to_s[1]
		 		if last_number == "0"
		 			return  fifty[50]
		 		else
		 			return fifty[50] + "-" + special_cases[last_number.to_i]
		 		end	
		 	elsif number < 70
		 		last_number = number.to_s[1]
		 		if last_number == "0"
		 			return  sixty[60]
		 		else
		 			return sixty[60] + "-" + special_cases[last_number.to_i]
		 		end	
		 	elsif number < 80
		 		last_number = number.to_s[1]
		 		if last_number == "0"
		 			return seventy[70]
		 		else
		 			return seventy[70] + "-" + special_cases[last_number.to_i]
		 		end	
		 	elsif number < 90
		 		last_number = number.to_s[1]
		 		if last_number == "0"
		 			return  eighty[80]
		 		else
		 			return eighty[80] + "-" + special_cases[last_number.to_i]
		 		end	
		 	elsif number < 100
		 		last_number = number.to_s[1]
		 		if last_number == "0"
		 			return  ninety[90]
		 		else
		 			return ninety[90] + "-" + special_cases[last_number.to_i]
		 		end
		 	elsif number < 1000
		 		last_number = number.to_s[1]
		 		very_last_number = number.to_s[2]
		 		if last_number == "0" && very_last_number != "0"
		 			return hund[100] + " " + special_cases[very_last_number.to_i]
		 		end
		 		if last_number == "0" && very_last_number == "0"
		 			return  hund[100]
		 		else
		 			return hund[100] + " " + special_cases[last_number.to_i] + " " + special_cases[very_last_number.to_i]
		 		end			

		 	end	
	
end

puts english_number(110)
