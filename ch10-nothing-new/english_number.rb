def english_number(number)
	if number < 0
		return 'Please enter a number that isn\'t negative.'
	end
	if number == 0
		return 'zero'
	end

	num_string = ''

	ones_place = ['one','two','three','four','five','six','seven','eight','nine']
	tens_place = ['ten','twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety']
	teenagers  = ['eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen']
	onwards = [['hundred', 2],
				['thousand', 3],
				['million', 6],
				['billion', 9],
				['trillion', 12],
				['quadrillion', 15],
              	['quintillion', 18],
              	['sextillion', 21],
              	['septillion', 24],
              	['octillion', 27],
              	['nonillion', 30],
              	['decillion', 33],
              	['undecillion', 36],
              	['duodecillion', 39],
              	['tredecillion', 42],
              	['quattuordecillion', 45],
              	['quindecillion', 48],
              	['sexdecillion', 51],
              	['septendecillion', 54],
              	['octodecillion', 57],
              	['novemdecillion', 60],
              	['vigintillion', 63],
              	['googol', 100]]
	
	
	remaining = number

	while onwards.empty? == false
		in_action = onwards.pop
		action_name = in_action[0]
		action_zeros = 10 ** in_action[1]
		current = remaining / action_zeros
		remaining = remaining - current * action_zeros
	
	  if current > 0
		prefix = english_number(current)
		num_string = num_string + prefix + ' ' + action_name
	    if remaining > 0
		  num_string = num_string + ' '
	    end
	  end
	end	

	current = remaining/10
	remaining = remaining - current*10

	if current > 0
		if ((current == 1) and (remaining > 0))
			num_string = num_string + teenagers[remaining-1]
			remaining = 0
		else
			num_string = num_string + tens_place[current-1]
		end
		if remaining > 0
		num_string = num_string + '-'
		end
	end

	current = remaining
	remaining = 0

	if current > 0
		num_string = num_string + ones_place[current-1]
	end
	num_string
end