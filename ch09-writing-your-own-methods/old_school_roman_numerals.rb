def old_roman_numeral num
	to_return = ""
	to_return << "M"*(num        / 1000) 
	to_return << "D"*(num % 1000 /  500) 
	to_return << "C"*(num % 500  /  100) 
	to_return << "L"*(num % 100  /   50) 
	to_return << "X"*(num % 50   /   10) 
	to_return << "V"*(num % 10   /    5) 
	to_return << "I"*(num % 5    /    1) 
	to_return
end 
