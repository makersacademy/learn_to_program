puts "What year were you born?"
year = gets.chomp.to_i

puts "In what number month were you born?"
month = gets.chomp.to_i

puts "What day of the month were you born?"
day = gets.chomp.to_i

bday = Time.local(year, month, day)
current = Time.new

age = 1
while Time.local(year + age, month, day)  <= current
  puts "SPANK!"
  age += 1
end
puts "You are #{age} years old!"
