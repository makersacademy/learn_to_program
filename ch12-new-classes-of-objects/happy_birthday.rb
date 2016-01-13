# your code here
puts "what year where you born?"
year = gets.chomp!

puts "what month where you born?"
month = gets.chomp!

puts "what day where you born?"
day = gets.chomp!

seconds = Time.new - Time.local(year,month,day)
nr_years = seconds/(365*24*60*60)
puts "You are #{nr_years.to_i} years old!"
print " SPANK! " * nr_years
