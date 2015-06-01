puts 'Hello, what year were you born in?'
	year = gets.chomp
puts 'And the month?'
	month = gets.chomp
puts 'Last but not least the day?'
	day = gets.chomp

birthyear = Time.local(year.to_i, month.to_i, day.to_i)
time = Time.new

age = 1

while Time.local(year.to_i + age, month.to_i, day.to_i) <= time
	puts 'Hugs!'
	age = age + 1
end