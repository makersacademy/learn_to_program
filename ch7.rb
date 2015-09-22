puts 'HELLO, SONNY!'
while true
	response = gets.chomp
	if response == "BYE"
	puts 'BYE SONNY!'
		break
	end
	if response != response.upcase
		puts 'HUH?!  SPEAK UP, SONNY!'	
	else 
		random_year = 1930 + rand(21)
		puts 'NO, NOT SINCE ' + random_year.to_s + '!'
	end
end 