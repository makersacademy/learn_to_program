# your code here

puts "Enter the year you were born (yyyy format)"
year=gets.chomp.to_i

puts "Enter the month you were born (mm format)"
month=gets.chomp.to_i

puts "Enter the day you were born (dd format)"
day=gets.chomp.to_i

puts "SPANK! " * Time.at(Time.new-Time.new(year, month, day)).year