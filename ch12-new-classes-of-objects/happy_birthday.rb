puts "Only enter integers please"
puts "What year were you born?"
year = gets.chomp
puts "What month were you born?"
month = gets.chomp
puts "What date was the day you were born?"
day = gets.chomp

age_result = Time.now - Time.local(year, month, day)
age_in_years = age_result / (60 * 60 * 24 *365)
puts "Just in case you have forgotten, I would like to remind you"
puts "that you are #{age_in_years.floor} years old!"
puts "SPANK!\n" * age_in_years
