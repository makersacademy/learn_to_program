puts 'Hi there! What year were you born? (YYYY)'
year = gets.chomp.to_i
puts 'And what month? (MM)'
month = gets.chomp.to_i
puts 'And what day? (DD)'
day = gets.chomp.to_i

birthday = Time.local(year, month, day)
time = Time.now

age = time.year - year
age -= 1 if time.month < month || (time.month == month && time.day < day)

p "Your date of birth is #{birthday} and you are #{age} years old."

puts "HAPPY BIRTHDAY!!!" if (time.month == month && time.day == day)

age.times {puts "SPANK!"}