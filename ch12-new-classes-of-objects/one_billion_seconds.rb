puts 'year born ie. 1900'
y = gets.input

puts 'month ie. 01'
m = gets.input

puts 'day ie. 31'
d = gets.input

puts 'hour ie. 22'
hour = gets.input

puts 'min ie. 59'
min = gets.input

puts 'second ie. 31'
sec = gets.input

t = Time.new(y, m, d, hour, min, sec)
puts t
puts t + 1000000000