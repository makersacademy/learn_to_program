puts "What's the year of your birth?:"
year = gets.chomp
puts "Which month?:"
month = gets.chomp
puts "And which day?:"
day = gets.chomp

bday = Time.new(year.to_i, month.to_i, day.to_i)

now = Time.new

puts "You are #{now.year - bday.year} years old"

c= 1
while now > bday
	now -= (60*60*24*365)
	puts "Happy #{c} bday"
	c += 1
end

