def old_roman_numeral num
  
decimals = [1000, 500, 100, 50, 10, 5, 1]
numerals = ["M", "D", "C", "L", "X", "V", "I"]

idx = 0
str = ""

while idx < decimals.length
	i = num/decimals[idx]
	num = num % decimals[idx]
	str = str + (numerals[idx].to_s * i)
	idx += 1
end

return str

end

