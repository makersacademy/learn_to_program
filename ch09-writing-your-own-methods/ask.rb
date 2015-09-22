def ask question
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
  	answer
end

puts 'Hello, and thank you for...'
puts

ask 'Do you like eating tacos?'
ask 'Do you like eating burritos?'
wets_bed = ask 'Do you wet the bed?'
ask 'Do you like eating chimichangas?'
ask 'Do you like eating sopapillas?'
puts 'Just a few more questions...'
ask 'Do you like drinking horchata?'
ask 'Do you like eating flautus?'
puts 
puts 'Thank you for taking part in this survey'
puts
puts wets_bed