puts "Enter the year you were born"
year = gets.chomp.to_i
puts "Enter the month you were born (1-12)"
month = gets.chomp.to_i
puts "Enter the month you were born (1-31)"
day = gets.chomp.to_i
birthday = Time.local(year,month,day)
age = (Time.now - birthday)/60/60/24/365

age.to_i.times {puts 'SPANK!'}