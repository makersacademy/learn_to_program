puts "What year were you born in?"
year = gets.chomp

puts "What month (number) were you born in?"
month = gets.chomp

puts "What day were you born on?"
day = gets.chomp

age = ((Time.new - Time.new(year,month,day)) / 31536000).to_int

print "SPANK " * age
