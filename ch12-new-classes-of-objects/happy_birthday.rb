puts "What year were you born?"
b_year = gets.chomp.to_i

puts 'What month were you born? (1-12)'
b_month = gets.chomp.to_i

puts 'What day of the month were you born?'
b_day = gets.chomp.to_i

b = Time.local(b_year, b_month, b_day)
t = Time.new

age = 1

while Time.local(b_year + age, b_month, b_day) <= t
  puts 'SPANK!'
  age = age + 1
end

# Happy birthday! Ask what year a person was born in, then the month, 
# and then the day. Figure out how old they are, and give them a big 
# SPANK! for each birthday they have had.