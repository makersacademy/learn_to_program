
puts 'year born ie. 1900'
y = gets.chomp.to_i

puts 'month ie. 01'
m = gets.chomp.to_i

puts 'day ie. 31'
d = gets.chomp.to_i

x = *(Time.new)
m = (d - x[3]) < 0 ? m -1 : m
age = m > x[4] ? ((x[5]-y)-1) : (x[5]-y)

puts "POTATO\n" * age
puts "you are #{age} potato's"

