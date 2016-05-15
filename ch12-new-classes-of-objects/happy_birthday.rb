#Happy birthday! Ask what year a person was born in, then the month,
#and then the day. Figure out how old they are, and give them a big SPANK!
#for each birthday they have had.

puts "What year were you born?"
year = gets.chomp.to_i

puts "What month (e.g. for October type 10)?"
month = gets.chomp.to_i

puts "And what day?"
day = gets.chomp.to_i

now = Time.new

age = 1

puts "Happy birthday!"

while Time.local(year + age, month, day) <= now
  puts 'SPANK!'
  age = age + 1
end






