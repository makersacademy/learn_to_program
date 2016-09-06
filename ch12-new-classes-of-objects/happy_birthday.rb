puts "What year were you born in?"
year = gets.chomp
puts "What month were you born in?  Please input a number between 1 and 12"
month = gets.chomp
puts "Which day of the month were you born on? Please input a number between 1 and 31"
day = gets.chomp
birthday = Time.local(year, month, day)
years = ((Time.new - birthday) / 60 / 60 / 24 / 365).to_i
puts "You're " + years.to_s + "!"
print "SPANK! " * years
puts
