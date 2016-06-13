def ask question
while true
		puts question
		reply = gets.chomp.downcase
		if reply == "yes"
      return true
		elsif reply == "no"
      return false
		else puts "please only answer with yes or no"
		end
	end
end

ask "Is Latin the coolest?"
answer = ask "Do you like Chris Pine?"
puts answer
