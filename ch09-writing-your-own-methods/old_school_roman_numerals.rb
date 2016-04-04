def old_roman_numeral(num)

  rn = "M"*(num/1000)
  rn += "D"*(num % 1000/500)
	rn += "C"*(num % 500/100)
	rn += "L"*(num % 100/50)
	rn += "X"*(num % 50/10)
	rn += "V"*(num % 10/5)
	rn += "I"*(num % 5)

	return rn

end
old_roman_numeral(num)
