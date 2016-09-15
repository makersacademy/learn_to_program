=begin
Ask what year a person was born in, then the month,
and then the day. Figure out how old they are, and give them a big SPANK!
for each birthday they have had.
=end

puts "what year were you born?"
year = gets.chomp
puts "what month?"
month = gets.chomp
puts "what day?"
day = gets.chomp

age = Time.new - Time.local(year,month,day) #gives age in seconds... convert to years:
age = age/(60*60*24*365)
puts "SPANK!\n"*age.round
