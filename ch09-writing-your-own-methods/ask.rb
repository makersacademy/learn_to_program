def ask question
  # your code here
	while true
	puts question
	reply = gets.chomp

		if (reply == 'yes' || reply == 'no')
			return
			break		
		else
			puts 'Please answer "yes" or "no".'
		end
	end
	return
end