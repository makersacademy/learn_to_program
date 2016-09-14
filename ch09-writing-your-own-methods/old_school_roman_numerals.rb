def old_roman number
	roman = ''
	roman += 'M' * (number/1000)
	roman += 'D' * (number % 1000/500)
	roman += 'C' * (number % 500/100)
	roman += 'L' * (number % 100/50)
	roman += 'X' * (number % 50/10)
	roman += 'V' * (number % 10/ 5)
	roman += 'I' * (number % 5)
end

puts old_roman(1209)