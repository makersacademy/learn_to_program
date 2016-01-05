def roman_numeral num
 	roman = []
  
 	cien  =    ((num % 100  )/ 100)
	#cinc  =    ((num % 100  )/50)
	dec   =    ((num % 100  )/10)
	uni    =    (num % 10   )

	if num <= 0
		puts 'Must be a positive number'
	
	else
		roman << 'M' * ( num / 1000 )
	
	
		if cien == 4
			roman << 'CD' 
		else
			roman << 'D' * ((num % 1000 )/500)
			roman << 'C' * ((num % 500  )/ 100)
		end


		if dec ==  9
			roman << 'XC'
		elsif dec == 4
			roman << 'XL'
		else
			roman << 'L' * ((num % 100)/50)
			roman << 'X' * ((num % 50)/10)
		
		end

		if uni == 9
			roman << 'IX'
		elsif uni == 4
			roman << 'IV'
		else
			roman << 'V' * ((num % 10)/5)
			roman << 'I' * (num % 5   )
		end
	end

	roman.join
 # your code here # your code here
end
#I = 1
#V = 5
#X = 10
#L = 50
#C = 100
#D = 500
#M = 1000