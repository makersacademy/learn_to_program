def ask question
  while true
  	puts question
  	reply = gets.chomp.downcase

  	if (reply == 'yes' || 'no')
  		if reply == 'yes'
  			return true
  		else
  			return false
  		end
  		break
  	else
  		puts 'please answer "yes" or "no"'
  	end
  end
   return
end

puts 'hello, and thank you for...'
puts

ask "do you like eating taco's?"
ask 'do you like eating burritoes'
wets_bed = ask 'do you wet the bed?'
ask 'do you like eating chimichangers?'
ask 'do you like eating sopapillas?'
puts "Just a few more question"
ask 'do you like drinking horcahta?'
ask 'do you like eating flautas?'

puts 
puts "DEBRIEFING:"
puts "Thank you for...."
puts
puts wets_bed