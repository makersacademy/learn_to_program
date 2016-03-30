# Full name greeting
puts "Hello there, and what\'s your first name?"
first = gets.chomp
puts "And what\'s your second name?"
second = gets.chomp 
puts "And what\'s your last name?"
last = gets.chomp 
puts "Hello there, #{first + " " + second + " " + last}"