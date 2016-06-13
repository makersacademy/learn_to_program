puts "Hello, dear! Speak to me."
bye = 0
while bye <3
	yourResponse = gets.chomp
	if yourResponse != yourResponse.upcase
		puts "HUH?!  SPEAK UP, SONNY!"
	else
		if yourResponse == "BYE"
			bye +=1
		end
		year = rand(1930..1950)
		puts "NO, NOT SINCE #{year}!"
	end
end
puts "Good bye, grandchild!"