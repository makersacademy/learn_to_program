puts "What year were you born in?"
year = gets.chomp

puts "What month were you born in?"
month = gets.chomp

puts "What day were you born on?"
day = gets.chomp

age_in_seconds = Time.now - Time.local(year, month, day)
age_in_years = (age_in_seconds / 60 / 60 / 24 / 365).to_i
puts "You are #{age_in_years}"

puts "SPANK! " * age_in_years