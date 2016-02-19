puts "What year were you born?"
year = gets.chomp.to_i
puts "What month were you born (the number of the month)?"
month = gets.chomp.to_i
puts "What date were you born?"
day  = gets.chomp.to_i

birth_time = Time.local(year, month, day)
age = Time.now - birth_time


years = age / (60 * 60 * 24 * 365) 

print "SPANK!" * years 
