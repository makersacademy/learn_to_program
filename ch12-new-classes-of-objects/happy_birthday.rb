# your code here

puts "What year were you born?"
year = gets.chomp.to_i

puts "What month were you born?"
month = gets.chomp.to_i

puts "What day of the month were you born?"
day = gets.chomp.to_i

birthdate = Time.local(year, month, day)

time_now = Time.new

age = 1

while Time.local(year + age, month, day) <= time_now

puts 'SPANK!'

age = age + 1

end