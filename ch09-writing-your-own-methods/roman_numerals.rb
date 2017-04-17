def roman_numeral num
  
answer = ''
	
	if num%1000 = 9
		answer += 'CM'
	else
		answer  += 'M' * (num/1000)
	end

	if (num%1000/500) = 4
		answer += 'CD'
	else
		answer  += 'D' * (num%1000/500)
	end
	if (num%500/100) = 9
		answer += 'XC'
	answer  += 'C' * (num%500/100)
	answer  += 'L' * (num%100/50)
	answer  += 'X' * (num%50/10)
	answer  += 'V' * (num%10/5)
	answer  += 'I' * (num%5/1)

answer


end