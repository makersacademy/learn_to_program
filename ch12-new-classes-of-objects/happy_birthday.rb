time = Time.new

puts "What year were you born in?"
birth_year = gets.chomp.to_i

puts "What month were you born in? Please state this as a number from 1 to 12."
birth_month = gets.chomp.to_i

puts "What day of of the month were you born on? Please state this as a number from 1 to 31." 
birth_day = gets.chomp.to_i

birth_time = Time.gm(birth_year, birth_month, birth_day)

age = 1

while Time.gm(birth_year + age, birth_month, birth_day) <= time
	puts "SPANK!"
	age += 1 
end
