#Ask what year the person was born in
puts "What year were you born in?"
year = gets.chomp.to_i
#Ask what month
puts "What month were you born in?"
month = gets.chomp.to_i
#Ask what date
puts "What date of month were you born on?"
date = gets.chomp.to_i

born = Time.local(year, month, date)
today = Time.new

puts "So you were born on the #{born}?"

age = 1

puts "Have a SPANK for each year you've been alive!"

while Time.local(year + age, month, date) <= today
puts 'SPANK!'
age = age + 1
end
