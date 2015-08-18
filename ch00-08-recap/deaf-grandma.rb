byes = 0

while byes < 3
	str = gets.chomp
	if str == "BYE"
		byes = byes + 1
	else
		byes = 0
	end
	if byes == 3
		puts "GOODBYE, YOU LITTLE JERK!"
	elsif str.upcase == str
		puts "NO, NOT SINCE #{1930 + rand(21)}!"
	else
		puts "HUH?! SPEAK UP, SONNY!"	
	end
end
