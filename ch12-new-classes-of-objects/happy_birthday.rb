# your code here
puts 'what year were you born'
b_year = gets.chomp.to_i

puts 'what month were you born'
b_month = gets.chomp.to_i

puts 'what day of the month were you born'
b_day = gets.chomp.to_i


b = Time.local(b_year, b_month, b_day)

t = Time.new

age = 1

while Time.local(b_year + age, b_month, b_day) <= t
	puts 'Spank'
	age = age + 1
end
