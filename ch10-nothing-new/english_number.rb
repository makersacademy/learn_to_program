def english_number number
	if number < 0 
		return 'Please enter a number that isn\'t negative.'
	end
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
	bigger = {"hundred" => 100,
						"thousand" => 1_000,
						"million" => 1_000_000,
						"billion" => 1_000_000_000,
						"trillion" => 1_000_000_000_000,
			  	"quadrillion" => 1_000_000_000_000_000,
					"quintillion" => 1_000_000_000_000_000_000,
				  	"sextillion" => 1_000_000_000_000_000_000_000,
						"septillion" => 1_000_000_000_000_000_000_000_000,
					  	"octillion" => 1_000_000_000_000_000_000_000_000_000,
					  	"nonillion" => 1_000_000_000_000_000_000_000_000_000_000,
				  		"decillion" => 1_000_000_000_000_000_000_000_000_000_000_000,
						"undecillion" => 1_000_000_000_000_000_000_000_000_000_000_000_000,
						"duodecillion" => 1_000_000_000_000_000_000_000_000_000_000_000_000_000,
						"tredecillion" => 1_000_000_000_000_000_000_000_000_000_000_000_000_000_000,
			"quattuordecillion" => 1_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000,
					"quindecillion" => 1_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000,}

	bigger_r = Hash[bigger.to_a.reverse] #need to reverse the array! oops


	left = number

	bigger_r.each do |key, val|
		write = left/val
		left = left - write*val
  	if write > 0
			num_string = num_string + english_number(write) + ' ' + key

			if left > 0
    		num_string = num_string + ' '
			end
 		end
	end

=begin
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
=end

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


