puts 'What year were you born?'
birth_year = gets.chomp.to_i
puts 'What month were you born? (1-12)'
birth_month = gets.chomp.to_i
puts 'What day were you born?'
birth_day = gets.chomp.to_i

b = Time.local(birth_year, birth_month, birth_day)
t = Time.now

age = 1

while Time.local(birth_year + age, birth_month, birth_day) <= t
	puts 'SPANK!'
	age = age + 1
end
