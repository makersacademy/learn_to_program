def ask question
	while true
	reply = gets.chomp.downcase

		return true if reply == 'yes' 
		return false if reply == 'no'
		
		if reply != 'yes' || reply != 'no'
			puts 'Please answer "yes" or "no".'
		end
	end
	return
end
