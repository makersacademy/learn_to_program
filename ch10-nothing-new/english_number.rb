def english_number number
  # your code here

  	zero_to_nine = ['zero',		'one',		'two',
  					'three',	'four',		'five',
  					'six',		'seven',	'eight',
  					'nine']

  	teens = 		['eleven',		'twelve',	'thirteen',
  					 'fourteen',	'fifteen',	'sixteen',
  					 'seventeen',	'eighteen',	'nineteen']

  	ten_to_ninety = ['ten',		'twenty',		'thirty',
  					 'forty',	'fifty',		'sixty',
  					 'seventy',	'eighty',		'ninety']

  	return 'This method only works with positive numbers!'	if number < 0		 

  	return zero_to_nine[0]	if number == 0	 
  	
  	big_numbers = {
	:centillion => 10**303,
	:vigintillion => 10**63,
	:novemdecillion => 10**60,
	:octodecillion => 10**57,
	:septendecillion => 10**54,
	:sexdecillion => 10**51,
	:quindecillion => 10**48,
	:quattuordecillion => 10**45,
	:tredecillion => 10**42,
	:duodecillion => 10**39,
	:undecillion => 10**36,
	:decillion => 10**33,
	:nonillion => 10**30,
	:octillion => 10**27,
	:septillion => 10**24,
	:sextillion => 10**21,
	:quintillion => 10**18,
	:quadrillion => 10**15,
	:trillion => 10**12,
	:billion => 10**9,
	:million => 10**6,
	:thousand => 10**3,
	:hundred => 10**2
	}

	num_string = ''
	write = 0
	left = number

	
	big_numbers.each do |number_name, big_number|
		write = left / big_number
		left = left - write * big_number
		if write > 0
  			num_string = num_string + english_number(write) + " #{number_name}" 
  			if left > 0 
  				num_string = num_string + ' '
  			end
  		end

  	end
  
  	write = left / 10
	left = left - write * 10
	
	if write > 0
        if ((write == 1) and (left > 0))
            num_string = num_string + teens[left - 1]
            left = 0
        else
        	num_string = num_string + ten_to_ninety[write - 1]
        end
    end
    
    num_string = num_string + '-' if left > 0
    
    write = left
	left = 0
	
	num_string = num_string + zero_to_nine[write] if write > 0
	
    num_string.gsub(/\s+/," ")
  
end
