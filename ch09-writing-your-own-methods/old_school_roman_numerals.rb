def old_roman_numeral num
  	
	answer = ''
	answer  += 'M' * (num/1000)
	answer  += 'D' * (num%1000/500)
	answer  += 'C' * (num%500/100)
	answer  += 'L' * (num%100/50)
	answer  += 'X' * (num%50/10)
	answer  += 'V' * (num%10/5)
	answer  += 'I' * (num%5/1)

answer



end
puts old_roman_numeral 1019
