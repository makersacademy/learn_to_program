puts "What year you are born?"
# your code here
year = gets.chomp.to_i

puts "what month you are born?(1-12)"
month = gets.chomp.to_i

puts "what day you are born?"
day = gets.chomp.to_i

t = Time.now
age = 1
while Time.local(year + age,month,day) <=t
	puts "Spank"
	age = age + 1
end