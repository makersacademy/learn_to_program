# your code here

puts "which year?"
year = gets.chomp
puts "which month?"
month = gets.chomp
puts "which day?"
day = gets.chomp
seconds_in_a_year = 60*60*24*365
how_old = ((Time.now - Time.local(year, month, day))/ seconds_in_a_year).to_i
puts "You are #{how_old} years old! #{"SPANK"*how_old}"
