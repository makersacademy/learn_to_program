puts "What year were you born in?"
year_of_birth = gets.chomp
puts "What month were you born in?"
month_of_birth = gets.chomp
puts "What day were you born on?"
day_of_birth = gets.chomp
puts Time.local(year_of_birth, month_of_birth, day_of_birth)
birthday = Time.local(year_of_birth, month_of_birth, day_of_birth)
age_in_seconds = Time.new - birthday
age_in_years = age_in_seconds / 60 / 60 / 24 /365
age = age_in_years.floor
puts "Then you're #{age} years old."
while age > 0
  puts "SPANK!"
  age = age - 1
end
