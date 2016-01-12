
number = 9999
prev_num = ""

while number >= 0

	def english_number number

		if number == 0
			return 'zero'
		end

		num_string = '' 
	  ones_place = ['one',       'two',      'three',
	                'four',      'five',     'six',
	                'seven',     'eight',    'nine']
	  tens_place = ['ten',       'twenty',   'thirty',
	                'forty',     'fifty',    'sixty',
	                'seventy',   'eighty',   'ninety']
	  teenagers  = ['eleven',    'twelve',   'thirteen',
	                'fourteen',  'fifteen',  'sixteen',
									'seventeen', 'eighteen', 'nineteen'] 


		left = number

		write = left/1000 
		left = left - write*1000 

		if write > 0

			thousands = english_number write
			num_string = num_string + thousands + ' thousand'
			if left > 0
	    	num_string = num_string + ' '
			end
	 	end

		
		write = left/100 
		left = left - write*100 

		if write > 0

			hundreds = english_number write
			num_string = num_string + hundreds + ' hundred'
			if left > 0
	    	num_string = num_string + ' '
			end
	 	end


		write = left/10 
		left = left - write*10 

		if write > 0
			if ((write == 1) and (left > 0))

	      num_string = num_string + teenagers[left-1]
	      left = 0
			else
	      num_string = num_string + tens_place[write-1]
	    end

		if left > 0
			num_string = num_string + '-'
			end
		end

		write = left 
			if write > 0
				num_string = num_string + ones_place[write-1] 
			end
	  
	  num_string
	end
	
	result = english_number(number)
	bot_text = "bottles"
	if number < 9999
		bot_text = "bottle" if number == 0
		puts prev_num.capitalize + " " + bot_text + " of beer on the wall, " + prev_num + " " + bot_text + " of beer."
		puts "Take one down, pass it around, " + result + " bottle" + "#{number == 1 ? "" : "s"}" + " of beer on the wall." + "#{number == 0 ? "" :".."}"
		puts
	end

	prev_num = result
	number -= 1

	
end

# your code here