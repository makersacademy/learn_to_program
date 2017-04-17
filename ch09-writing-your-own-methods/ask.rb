def ask question
	
	goodAnswer = false

	while (not goodAnswer)
		puts question
		reply = gets.chomp.downcase

		if (reply == 'yes' or reply == 'no')
			goodAnswer = true

			if reply == 'yes'
				return true
			else
				return false
			end
		else
			puts 'Please answer yes or no'
		end
	end

	answer
end

ask 'Do you like eating tacos?'

wetsBed = ask 'Do you wet the bed?'

if wetsBed == true
	puts 'Are you serious??!! You WET THE BED?? What a huge loser.'
else
	puts 'You say you don\'t wet the bed, but I\'m not so sure...'
end