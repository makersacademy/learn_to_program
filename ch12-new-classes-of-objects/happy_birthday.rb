require 'date'

puts "What year were you born in?"

year = gets.chomp

puts "What month were you born in?"

month_in_words = gets.chomp.capitalize
month = Date::MONTHNAMES.index("#{month_in_words}")

puts "What day were you born on?"

day = gets.chomp

puts
puts "Your birthday is #{birthday_date = Time.local(year.to_i, month, day.to_i)}"
puts 

today = Time.now

if today.month < birthday_date.month || (today.month == birthday_date.month && birthday_date.day > today.day)
	age = (today.year - birthday_date.year)-1
else
	age = today.year - birthday_date.year
end

puts "You are #{age} years old."
puts
puts "SPANK!\n"*age.to_i