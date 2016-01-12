def roman_numeral num

	result = []
 
 	cien = ((num % 100  )/ 100)
 	dec = ((num % 100  )/10)
 	uni = (num % 10   )
 
 	if num <= 0
 		puts 'Must be a positive number'
 	else
 		result << 'M' * ( num / 1000 )
 	
 		if cien == 4
 			result << 'CD' 
 		else
 			result << 'D' * ((num % 1000 )/500)
 			result << 'C' * ((num % 500  )/ 100)
 		end
 	
 	
 		if dec ==  9
 			result << 'XC'
 		elsif dec == 4
 			result << 'XL'
 		else
 			result << 'L' * ((num % 100)/50)
 			result << 'X' * ((num % 50)/10)
 	
 		end
 
		if uni == 9
 			result << 'IX'
 		elsif uni == 4
 			result << 'IV'
 		else
 			result << 'V' * ((num % 10)/5)
 			result << 'I' * (num % 5   )
 		end
 	end
 	
 	result.join
 
 end
 
 