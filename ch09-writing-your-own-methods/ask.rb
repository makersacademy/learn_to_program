def ask question
  	while true
    	puts question
    	reply = gets.chomp.downcase
		if (reply == 'yes' || reply == 'no')
			if reply == 'yes'
				return true
			else
        		return false
			end
			# break 
		else
      		puts 'Please answer "yes" or "no".'
		end 
	end
end

puts 'Hello, and thank you for...'
puts

ask 'Do you like eating tacos?' 
wets_bed = ask 'Do you wet the bed?' 
ask 'Do you like eating sopapillas?'
puts 'Just a few more questions...'
ask 'Do you like drinking horchata?'
ask 'Do you like eating flautas?'
puts
puts 'DEBRIEFING:'
puts 'Thank you for...'
puts
puts wets_bed