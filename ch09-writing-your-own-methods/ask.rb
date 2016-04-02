def ask question
  # your code here
  	while true
		reply = gets.chomp.downcase
		if (reply == 'yes' || reply == 'no')
			if reply == 'yes'
				return true
			else
				return false
			end
		else
			puts 'Please answer "yes" or "no".'
		end
	end
end
