def ask question
	puts question

	while reply = gets.chomp.downcase
		case reply
			when 'yes'
				return true
			when 'no'
				return false
			else
				puts 'Please answer "yes" or "no".'
		end
	end
end
