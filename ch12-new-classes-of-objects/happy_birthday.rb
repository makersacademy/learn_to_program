puts 'What year were you born?'
birth_year = gets.chomp
puts 'What month were you born?'
birth_month = gets.chomp.downcase
case birth_month
	when 'janurary'; birth_month = 1
	when 'feburary'; birth_month = 2
	when 'march'; birth_month = 3
	when 'april'; birth_month = 4
	when 'may'; birth_month = 5
	when 'june'; birth_month = 6
	when 'july'; birth_month = 7
    when 'august'; birth_month = 8
    when 'september'; birth_month = 9
	when 'october'; birth_month = 10
	when 'november'; birth_month = 11
	when 'december'; birth_month = 12
end
puts 'What day were you born?'
birth_day = gets.chomp

time_birth = Time.new(birth_year, birth_month, birth_day)
age =  ((Time.new - time_birth) / 60 / 60 / 24 / 7 / 52)

puts "You are #{age.floor} years old!"
puts "SPANK!" * age.floor