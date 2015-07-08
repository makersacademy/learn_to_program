def ask question
	while true

		puts question
		reply = gets.chomp.downcase

		if reply == "yes" 
				return true
		elsif reply == "no"
				return false
		else
			puts "Please enter either 'yes' or 'no'."
		end

	end

end

#Put questions below
output = ask ("??")