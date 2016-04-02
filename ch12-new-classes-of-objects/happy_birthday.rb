puts "What year were you born?"
year = gets.chomp.to_i
puts "And what month?"
month = gets.chomp.to_i
puts "And what day?"
day = gets.chomp.to_i
birthday = Time.local(year, month, day)

age = Time.now.year - birthday.year
age = age - 1 if Time.now.month < birthday.month
puts "Spank!\n" * age
puts age
