puts "What year were you born?"
y = gets.chomp.to_i
puts "What is the number that represents the month of your birth?"
m = gets.chomp.to_i
puts "And the day?"
d = gets.chomp.to_i

time = Time.new
birthday_time = Time.local(y,m,d)

seconds_difference = time - birthday_time
birthdays = (seconds_difference/(60*60*24*365)).to_i

puts "You've had #{birthdays} birthdays!"
birthdays.times { puts "SPANK!" }