def ask question
	
		puts question
		reply = gets.chomp.downcase

		while reply != 'yes' && reply != 'no'
			puts "Please answer 'yes' or 'no'"
			reply = gets.chomp.downcase
		end

		if reply == 'yes'
			true
		else 
			false
		end

end