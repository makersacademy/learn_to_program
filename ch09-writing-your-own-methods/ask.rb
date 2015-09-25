def ask question 
	while true
		puts question	
		reply = gets.chomp.downcase

		if reply == "yes" || reply == "no"
			break
		else
			puts "Please reply \'yes\' or \'no\'"
		end
	end

end