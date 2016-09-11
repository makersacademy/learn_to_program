puts "Hey you, what year were you born in?"
year = gets.chomp.to_i
puts "And the month?"
month = gets.chomp.to_i
puts "On what day?"
day = gets.chomp.to_i

born = Time.local(year, day, month)
today = Time.new
age = 1
while Time.local(year + age, day, month) <= today
puts 'SPANK!'
age = age + 1
end
