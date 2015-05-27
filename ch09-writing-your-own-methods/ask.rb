def ask question
  	while true
		puts question
		reply = gets.chomp.downcase
	
		if (reply == 'yes' || reply == 'no') 
			if reply == 'yes'
				return true 
			else
				return false 
			end 
			#removed break command since now using return statements
		else
			puts 'Please answer "yes" or "no".' 
		end
	end
end

ask 'Do you like chocolate?'