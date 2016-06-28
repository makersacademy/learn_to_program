#first prompt user for inputs and store them
puts "What year were you born? YYYY"
user_year = gets.chomp.to_i
puts "What month were you born? MM"
user_month = gets.chomp.to_i
puts "What day of the month were you born? DD"
user_day = gets.chomp.to_i

#store the birthday as a time
user_birth = Time.gm(user_year, user_month, user_day)
#calculate difference in time from then to now
age_diff = Time.new - user_birth
#work out how many years have passed
age = (age_diff / 31536000).floor
#puts that out followed by a spank for each year
puts "#{age}!\n"  
puts "SPANK!\n" * age
