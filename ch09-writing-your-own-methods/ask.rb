def ask question
	while true
	    reply = gets.chomp.downcase
		if reply == 'yes'
			return true
		else
			return false
		end
	end
end
