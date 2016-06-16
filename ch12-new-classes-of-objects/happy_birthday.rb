
puts "Enter birth year"
year = gets.chomp.to_i

puts "Enter birth month (1-12)"
month = gets.chomp.to_i

puts "Enter birth day"
day = gets.chomp.to_i

b = Time.local(year, month, day)
t = Time.new

age = 1

while Time.local(year + age, month, day) <= t
  puts 'SPANK!'
  age += 1
end
