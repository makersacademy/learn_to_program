def old_roman_numeral num
	roman = []
	if num <= 0
		puts 'Must be a positive number'
	else
		roman << 'M' * ( num / 1000 )
		roman << 'D' * ((num % 1000 )/500)
		roman << 'C' * ((num % 500  )/ 100)
		roman << 'L' * ((num % 100  )/50)
		roman << 'X' * ((num % 50   )/10)
		roman << 'V' * ((num % 10   )/5)
		roman << 'I' * ((num % 5    )/1)
	end
		roman.join


  # your code here
end

#I = 1
#V = 5
#X = 10
#L = 50
#C = 100
#D = 500
#M = 1000