puts "What year were you born?"
year = gets.chomp.to_i

puts "Which month were you born?"
month = gets.chomp.to_i

puts "Which day were you born?"
day = gets.chomp.to_i

yearNow = Time.now.year.to_i
monthNow = Time.now.month.to_i
dayNow = Time.now.day.to_i

age = yearNow - year

if monthNow < month
	age -= 1
elsif monthNow == month && dayNow < day
	age -= 1
end

puts "your age is #{age} years old."

count = 1
while count <= age
	puts "#{count} SPANK! "
	count +=1
end