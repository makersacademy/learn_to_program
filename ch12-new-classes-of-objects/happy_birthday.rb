def method

puts "What year were you born in?"
year = gets.chomp.to_i

puts "What is the number of the month were you born in?"
month = gets.chomp.to_i

puts "What is the number of the day were you born on?"
day = gets.chomp.to_i

current_time = Time.new

counter = 0

age = 1

while Time.new(year + age, month, day) <= current_time
  puts "SPANK!"

  age += 1
end


end
