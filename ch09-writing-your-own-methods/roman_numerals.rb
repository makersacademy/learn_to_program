def roman_numeral num
  # “Modern” Roman numerals. Eventually, someone thought it would be ter- ribly clever if 
  #putting a smaller number before a larger one meant you had to subtract the smaller one. 
  #As a result of this development, you must now suffer. 
  #Rewrite your previous method to return the new-style Roman numerals so when someone 
  #calls roman_numeral 4, it should return 'IV'.

def roman_numeral input
	num = input.to_i

	m = 'M' * (num / 1000)
	d = 'D' * ((num%1000) / 500)
	c = 'C' * ((num%500) / 100)
	l = 'L' * ((num%100) / 50)
	x = 'X' * ((num%50) / 10)
	v = 'V' * ((num%10) / 5)
	i = 'I' * ((num%5) / 1)

	if i == 'IIII' && v != 'V'
    i = 'IV'
  elsif i == 'IIII'
    v = 'IX'
    i = ''
  end

  if x == 'XXXX' && l != 'L'
    x = 'XL'
  elsif x == 'XXXX'
    l = 'XC'
    x = ''
  end

  if c == 'CCCC' && d != 'D'
    c = 'CD'
  elsif c == 'CCCC'
    d = 'CM'
    c = ''
  end

	return m + d + c + l + x + v + i

end

