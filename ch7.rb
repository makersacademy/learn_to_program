puts 'Hello, Sonny!'
while true
	response = gets.chomp
	if response == response.downcase
	puts 'HUH?!  SPEAK UP, SONNY!'	
	elsif response == response.upcase
		puts 'NO, NOT SINCE 1938' 
	end
end 