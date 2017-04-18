def old_orm_numeral num

	orm = ''

	orm += 'M' * (num / 1000)
	
	orm += 'D' * (num % 1000 / 500)
	
	orm += 'C' * (num % 500 / 100)
	
	orm += 'L' * (num % 100 / 50)
	
	orm += 'X' * (num % 50 / 10)
	
	orm += 'V' * (num % 10 / 5)
	
	orm += 'I' * (num % 5 / 1)
	
	orm

end
