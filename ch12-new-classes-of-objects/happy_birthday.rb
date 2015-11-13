puts "What year were you born?"
year = gets.chomp.to_i

puts "What number month were you born?"
month = gets.chomp.to_i

puts "What day of the month were you born?"
day = gets.chomp.to_i

born = Time.local(year, month, day)
current_time = Time.new

age = 1

while Time.local(year + age, month, day) <= current_time
  puts 'SPANK!'
  age += 1
end