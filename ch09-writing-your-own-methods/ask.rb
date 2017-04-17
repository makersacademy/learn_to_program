def ask question
  while true
  	puts question
  	reply = gets.chomp
  		if (reply == "yes" || reply == "no") 
  			return reply == "yes" ? true : false 
  		else
  			puts "Please answer 'yes' or 'no'."
  		end
	end
end