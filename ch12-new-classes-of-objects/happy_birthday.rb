puts 'What year were you born?'
a_year = gets.chomp.to_i

puts 'What month were you born?(1-12)'
a_month = gets.chomp.to_i

puts 'What day were you born?'
a_day = gets.chomp.to_i


t = Time.new

age = 1

while Time.local(a_year + age, a_month, a_day) <= t
	puts 'SPANK!'
	age = age +1
end

