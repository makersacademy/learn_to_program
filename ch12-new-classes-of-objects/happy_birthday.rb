puts "What year were you born?"
year = gets.chomp
puts "What month were you born?"
month = gets.chomp
puts "What day were you born?"
day = gets.chomp

today = Time.new
date_of_birth = Time.local(year.to_i, month.to_i, day.to_i)

age = (today - date_of_birth) / 365 / 24 / 60 / 60

print "SPANK! " * age
