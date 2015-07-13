puts 'Which year you were born?'
year = gets.chomp.to_s
puts 'Which month you were born?'
month = gets.chomp.to_s
puts 'On what day you were born?'
day = gets.chomp.to_s
# puts 'Your day of born then: ' + day + ', ' + month + ', ' + year + '.'
def calculate_number_of_years(year, month, day)
	minutes = Time.new - Time.mktime(year, month, day)
	years = ((minutes/525600)/60).to_i
end
years = calculate_number_of_years(year, month, day)

puts 'Now you are gonna get just enough spanking!'
puts
puts 'SPANK!' * years