puts 'Hello, what year were you born in?'
year = gets.chomp.to_i
puts 'Great, now what month were you born? (Using numbers please)'
month = gets.chomp.to_i
puts 'Awesome, finally what day were you born?'
day = gets.chomp.to_i

b_day = Time.local(year, month, day)
curr_time = Time.new

age = 1

while Time.local(year + age, month, day) <= curr_time
  puts "SPANK!"
  age = age + 1
end
puts "Great! That\'s #{age} SPANKS!"
