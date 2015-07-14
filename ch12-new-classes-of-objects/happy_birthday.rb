#Happy Brthday

puts "Your Birth year please"
birth_year = gets.chomp.to_i

puts "Your birth month please"
birth_month = gets.chomp.to_i

puts "and finally....What day of the month where you born?"
birth_day = gets.chomp.to_i

timeNow = time.new
timeBorn = time.local(birth_year, birth_month, birth_day)

age = 1

while timeNow <= timeBorn
	puts "Spank!"
	age += 1
end	
