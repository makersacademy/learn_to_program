
puts "What year were you born?"
year = gets.chomp.to_i
puts "What month were you born? (1-12)"
month = gets.chomp.to_i
puts "what day were you born"
day = gets.chomp.to_i
	
b = Time.new(year, month, day)
now = Time.new 

age = 1

while Time.new(year + age, month, day) <= now 
	puts 'SPANK!'
	age = age + 1
end 
	
	


