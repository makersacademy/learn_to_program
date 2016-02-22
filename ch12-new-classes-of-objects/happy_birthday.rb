puts "What year were you born?"
year = gets.chomp.to_i

puts "What month were you born?"
month = gets.chomp.to_i

puts "What day were you born?"
day = gets.chomp.to_i

birthday = Time.local(year, month, day)
age = (Time.now - birthday)/60/60/24/365

age.to_i.times {puts "SPANK!"}