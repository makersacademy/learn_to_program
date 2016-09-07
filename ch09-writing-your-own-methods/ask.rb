def ask question
	while true
	puts question
	reply = gets.chomp.downcase

if (reply == 'yes' || reply == 'no')
	if reply == 'yes'
	return  true
	else
	return false
end
 'Please answer "yes" or "no".'end
end

end

puts 'Hello, and thank you.' 
puts 

ask 'Do you like eating tacos?'
ask 'Do you like eating burritos?'
wets_bed = ask 'Do you wet the bed?'
ask 'Do you like eating Chimichangas?'

puts
puts 'DEBRIEFING:'
puts 'Thank you for..'
puts wets_bed


  


