def ask question
  # your code here
  while true
  	puts question
  	reply = gets.chomp.downcase

  	if (reply == 'yes')
  		return true
  	elsif (reply == 'no')
  		return false
  	else
  		return reply
  	end
  end
end


wets_bed = ask('Do you wet the bed?') # Save this return value ask 'Do you like eating chimichangas?' ask 'Do you like eating sopapillas?'
