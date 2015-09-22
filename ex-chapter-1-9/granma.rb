puts "HEY, SONNY"
response = ''

bye = 0

while bye < 3
	response = gets.chomp
	if response == 'BYE' 
		puts "NO! NOT SINCE #{rand(1930..1950).to_s}!"
	    bye += 1
	elsif response == response.upcase
		puts "NO! NOT SINCE #{rand(1930..1950).to_s}!"
		bye = 0
	else
	    puts "HUH?! I CAN'T HEAR YOU!"
	    bye = 0
	end	
end