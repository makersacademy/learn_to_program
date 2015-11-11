def ask question
  # your code here
	while true
	puts question
	reply = gets.chomp

		if reply == 'yes'
			return true	
		elsif reply == 'no'
			return false						
		else
			puts 'Please answer "yes" or "no".'
		end
	end
	return
end