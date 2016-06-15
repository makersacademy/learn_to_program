def ask question 
	while true 
		puts question 
		reply = gets.chomp
		return true if reply == "yes"
		return false if reply == "no"
		puts "Either answer yes or no."
	end 
end 
