def askquestion
		while (true)
			puts "question"
			reply = gets.chomp.downcase
					if (reply == 'yes')
						return true
						
					elsif (reply == 'no')
						 return true
				  else
					puts ' Please answer "yes" or "no".'
				end
		end
	#answer # This is what we return (true or false).
end