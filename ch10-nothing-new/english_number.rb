def english_number number
	if number < 0
		return 'Please enter a number that isn\'t negative.' 
	elsif number == 0 
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

	big_numbers = { :quindecillion => 10**48,			:quattuordecillion => 10**45, :tredecillion => 10**42,	
									:duodecillion => 10**39,			:undecillion => 10**36, 			:decillion => 10**33,			
									:nonillion => 10**30,					:octillion => 10**27,					:septillion => 10**24,
									:sextillion => 10**21,				:quintillion => 10**18,				:quadrillion => 10**15,		
									:trillion => 10**12,					:billion => 10**9,						:million => 1_000_000,
									:thousand => 1000,		 				:hundred => 100																			}

	left = number

	big_numbers.each do |word, num|
		write = left / num
		left = left - write * num

		if write > 0
			numbers = english_number write
			num_string = num_string + numbers + " #{word}" 

			if left > 0
		    num_string = num_string + ' '
			end
		end
	end

	write = left / 10 				# How many tens left?
	left = left - write * 10	# Subtract off those tens.

	if write > 0
		if ((write == 1) and (left > 0))
      #  Since we can't write "tenty-two" instead of "twelve"
      num_string = num_string + teenagers[left-1]
			left = 0
		else
      num_string = num_string + tens_place[write-1]
    end

		if left > 0
			num_string = num_string + '-' # So we don't write 'sixtyfour'... 
		end 
	end

	write = left # How many ones left to write out? 
	left = 0 # Subtract off those ones.

	if write > 0
		num_string = num_string + ones_place[write-1]
	end

	num_string
end