=begin THE ORIGINAL CODE FROM BOOK
def ask question
  # your code here
    while true
		puts question
		reply = gets.chomp.downcase
		if (reply == 'yes' || reply == 'no')
			if reply == 'yes'
				answer = true
			else
				answer = false
			end
			break
		else
			puts 'Please answer "yes" or "no".'
		end
	end 
	answer # This is what we return (true or false).
end
=end
def ask question
  #  while true  ##### why do we need the while true statement? It runs correctly without it
		puts question
		reply = gets.chomp.downcase
		case reply
			when 'yes' then return true
			when 'no' then return false
			else puts 'Please answer "yes" or "no".'		
		end
	#end	
end