puts "What year were you born?"
year = gets.chomp
puts "What month were you born in?"
month = gets.chomp
puts "What day where you born on?"
day = gets.chomp

year_in_s = 365*24*60*60
birthday = Time.local(year, month, day)
age = (Time.now - birthday).to_i/year_in_s

age.times { print "SPANK! " }