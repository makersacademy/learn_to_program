puts 'What year were you born?'
year = gets.chomp.to_i

puts 'What month were you born? (1-12)'
month = gets.chomp.to_i

puts 'What day of the month were you born?'
day = gets.chomp.to_i

#the current time
curTime = Time.new

age = 1

while Time.gm(year + age, month, day) <= curTime
  puts 'SPANK!'
  age += 1
end

puts "Thats #{age-1} spanks!"