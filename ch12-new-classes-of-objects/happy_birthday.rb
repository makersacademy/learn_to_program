print "What year were you born in? "
year = gets.chomp
print "What month were you born in? (As a number please) "
month = gets.chomp
print "And what day of the month? "
day = gets.chomp

years_old = (Time.now - Time.new(year, month, day)) * 3.17098 * 10**-8

years_old.to_i.times {puts "SPANK"}