def ask question
		puts question
		reply=gets.downcase.chomp
			return true if reply == 'yes'
			return false if reply == 'no'		
		puts "Please answer Yes or No only!"
		ask question 
end

