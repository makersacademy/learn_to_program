def old_roman_numeral(num)
	output = ''

	output << 'M' * (num/1000)
	output << 'D' * (num%1000/500)
	output << 'C' * (num%1000%500/100)
	output << 'L' * (num%1000%500%100/50)
	output << 'X' * (num%1000%500%100%50/10)
	output << 'V' * (num%1000%500%100%50%10/5)
	output << 'I' * (num%1000%500%100%50%10%5/1)
end

puts old_roman_numeral(2688)

#I = 1 V = 5 X = 10
#C = 100 D = 500 M = 1000
#L = 50