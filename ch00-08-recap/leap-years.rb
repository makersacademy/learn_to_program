puts "Give us a starting year then?!"
year1 = gets.chomp.to_i
puts "...and an ending year?"
year2 = gets.chomp.to_i

puts "Here's all the leap years between those years..."

while year1 <= year2
	if year1%400 == 0 or (year1%4 == 0 and year1%100 != 0)
		puts year1
	end
	year1 = year1 + 1
end
		