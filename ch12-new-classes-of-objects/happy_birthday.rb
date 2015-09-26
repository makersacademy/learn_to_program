puts 'What year were you born?'
year = gets.chomp

	
monthwords = true
	while monthwords == true
	puts 'Which month?'
	month = gets.chomp.downcase

		if month == 'january'
			month = 1
				monthwords = false
		elsif month == 'february'
			month = 2
				monthwords = false
		elsif month == 'march'
			month = 3
				monthwords = false
		elsif month == 'april'
			month = 4
				monthwords = false
		elsif month == 'may'
			month = 5
				monthwords = false 
		elsif month == 'june'
			month = 6
				monthwords = false
		elsif month == 'july'
			month = 7
				monthwords = false
		elsif month == 'august'
			month = 8
				monthwords = false
		elsif month == 'september'
			month = 9
				monthwords = false
		elsif month == 'october'
			month = 10
				monthwords = false
		elsif month == 'november'
			month = 11
				monthwords = false
		elsif month ==  'december'
			month = 12
				monthwords = false
		else
			puts 'Please type a month'
			monthwords = true
		end
	end


puts 'And which day?'
day = gets.chomp

age = Time.mktime(year.to_i, month.to_i, day.to_i)
puts age
number = (Time.new - age) / (365 * 24 * 60 * 60)
puts 'SPANK' * number