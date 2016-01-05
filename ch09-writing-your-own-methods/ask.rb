#test push

def ask question
  while true
  	puts question
  	reply = gets.chomp.downcase

  	if reply == "yes" || reply == "no"
  		if reply == "yes"
  			return true
  		else
  			return false
  		end
  		break
  	else
  		puts "Please answer 'yes' or 'no'."
  	end
  end

  answer
end