puts "What year were you born? (YYYY)"
year = gets.chomp.to_i
puts "What month were you born? (MM)"
month = gets.chomp.to_i
puts "What day of the month were you born? (DD)"
day = gets.chomp.to_i

seconds_per_year = 3600 * 24 * 365.25

age = ((Time.new - Time.local(year, month, day))/seconds_per_year).to_i

puts "Your age is #{age}."
puts
age.times do print "SPANK! " end
puts
