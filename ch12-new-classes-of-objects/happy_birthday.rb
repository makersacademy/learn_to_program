#first prompt user for inputs and store them
puts "What year were you born?"
user_year = gets.chomp.to_i
puts "What month were you born?"
user_month = gets.chomp.to_i
puts "What day of the month were you born?"
user_day = gets.chomp.to_i

user_birth = Time.gm(user_year, user_month, user_day)
age_diff = Time.new - user_birth
age = (age_diff / 31536000).floor
puts "#{age}!\n"
puts "SPANK!\n" * age
