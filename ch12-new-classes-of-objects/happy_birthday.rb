
puts "What year were you born in?"
year = gets.chomp
puts "And the month?"
month = gets.chomp
puts "And the day?"
day = gets.chomp
age = ((Time.new - Time.new(year,month,day))/365.25/24/60/60).to_i
puts "You're #{age}"
puts "SPANK! "*age
