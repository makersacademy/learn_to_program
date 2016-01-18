print "What year were you born? "
year = gets.chomp
print "What month were you born in? "
month = gets.chomp
print "What day were you born on? "
day = gets.chomp

years_old = (Time.new - Time.new(year.to_i, month.to_i, day.to_i)) / (60*60*24) / 365
years_old.to_i.times { puts "SPANK!" }
