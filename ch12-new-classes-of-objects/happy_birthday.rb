puts "What YEAR were you born in?"
year = gets.chomp

puts "What MONTH were you born in?"
month =gets.chomp

puts "What DATE were you born on?"
date = gets.chomp

birthday = Time.mktime(year, month, date)
age = (Time.new - birthday).to_i / 60 / 60 / 24 / 365

puts "You were born on #{birthday}."
puts "You are #{age} years old."

age.times { puts "SPANK!" }