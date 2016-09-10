puts "What year were you born?"
year = gets.chomp

puts "And month"
month = gets.chomp

puts "And the date?"
birthday = gets.chomp

birthday_string = "#{year}, #{month}, #{birthday}"

age = Time.new - Time.local(birthday_string)

puts age

age_in_years = age/31536000

puts "You are #{age_in_years.to_i} years old!"

age_in_years.to_i.times { puts "SPANK!"}
