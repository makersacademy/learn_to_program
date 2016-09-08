def ask question
	while true
		puts question
		reply = gets.chomp.downcase

		if (reply == "yes") || (reply == "no")
			if reply == "yes"
				return true
			else
				return false
			end
			
		else
			puts "Please answer yes or no."
		end
	end
end

puts "Hello and welcome to pointless questions."

ask "Do you like cake?"
ask "Do you like birthdays?"
ask "Do you like the idea of going to bed right now for a solid 8 hours sleep??"

# tidy up method by removing the answer variable.
# use return to exit from the loop