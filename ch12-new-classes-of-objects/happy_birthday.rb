puts "What year were you born in?"
year = gets.chomp.to_i
puts "And the month..."
month = gets.chomp.to_i
puts "and what day..."
day = gets.chomp.to_i

birthday = Time.local(year, month, day)

current_time = Time.new 

difference = current_time - birthday

age = difference / 31536000

puts

puts "SPANK!\n" * age.to_i