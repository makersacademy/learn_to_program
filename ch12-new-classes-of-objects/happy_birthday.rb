require 'date'

puts "Please tell me when you were born. What year was it?"
dob_year = gets.chomp.to_i

#This should be expanded so a hash can read the right number from a string e.g. July
puts "And what month? Please give the number of the month (e.g. 7 for July)"
dob_month = gets.chomp.to_i

puts "And what day of the month was it (the date, not the weekday!)?"
dob_day = gets.chomp.to_i

#dob = Date(dob_year, dob_month, dob_day) 
now = Date.today

age = now.year - dob_year - ((now.month > dob_month || (now.month == dob_month && now.day >= dob_day)) ? 0 : 1)

puts "You are #{age} years old now!"
n = 1

while n <= age
  puts 'SPANK!'
  n = n + 1
end

#age.to_i.times print "SPANK! "
