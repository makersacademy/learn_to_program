# your code here
=begin
Happy birthday! Ask what year a person was born in, then the month,
and then the day. Figure out how old they are, and give them a big SPANK!
for each birthday they have had.
=end

puts "What year were you born in?"
year = gets.chomp
puts "What month were you born in? (please enter 1-12 for month)"
month = gets.chomp
puts "What day of the month were you born?"
day = gets.chomp

now = Time.new
birthday = Time.mktime(year.to_i, month.to_i, day.to_i)

age = (now - birthday)/(60*60*24*365)

puts "You are #{age.to_i} years old!"

age.to_i.times do
puts 'spank'
end