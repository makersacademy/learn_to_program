puts "Year"
year = gets.chomp.to_i

puts "Month"
month = gets.chomp.to_i

puts "Day"
day = gets.chomp.to_i

dob = Time.local(year, month, day)
today = Time.new

age = (today - dob)/60/60/24/365
age_i = age.to_i

puts "SPANK!\n" * age_i 