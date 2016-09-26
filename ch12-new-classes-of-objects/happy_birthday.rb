require 'date'
puts "What is your birth year?"
year = gets.chomp.to_i
puts "What is your birth month (enter a number from 1 to 12)?"
month = gets.chomp.to_i
puts "What day of the month were you born on?"
day = gets.chomp.to_i

birthday = Date.new(year,month,day)
puts birthday
puts DateTime.now
age = (DateTime.now - birthday).to_i/365
puts "Age = #{age}."
arr = []
age.times {arr << "Spank"}
print arr.join(", ") + "!!!"