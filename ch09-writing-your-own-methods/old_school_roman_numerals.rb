def old_roman_numeral num
  	
	answer = ''
	answer += 'M' * (num/1000)
	answer += 'D' * (num%1000/500)
	answer += 'C' * (num%500/100)
	answer += 'L' * (num%100/50)
	answer += 'X' * (num%50/5)
	answer += 'I' * (num%5)

answer


end
puts 'Please give me an integer between 1 and 3000'

num =gets.chomp.to_i
puts old_roman_numeral(num)