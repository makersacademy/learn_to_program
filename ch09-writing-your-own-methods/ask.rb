def ask question
	puts question
	reply = gets.chomp.downcase

	reply == "yes" ? true : reply == "no" ? false : 'Please answer "yes or "no".'
end
