puts "I can tell you Leap Years."
puts "Please type your starting year:"
startYear = gets.chomp.to_i
puts "Please type your ending year:"
endYear = gets.chomp.to_i

puts "Here are the leap years in the period between #{startYear} and #{endYear}:"
for year in startYear..endYear
	if year%4 == 0
		puts year unless (year%100==0) && (year%400 !=0)
	end
end