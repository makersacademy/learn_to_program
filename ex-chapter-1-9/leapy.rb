puts "first year"
year1 = gets.chomp.to_i
puts "last year"
year2 = gets.chomp.to_i
while year2 != year1 
    if year2 % 4 == 0 || (year2 % 100 == 0 && year2 % 400 == 0)
    	puts year2.to_s
    end
	year2 -= 1
end