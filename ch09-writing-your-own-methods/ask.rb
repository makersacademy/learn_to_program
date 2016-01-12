def ask question
while true
	puts question
	reply = gets.chomp.downcase

	if (reply == "yes" || reply == "no")
		if reply == "yes"
			return true
		else
			return false
		end
		break
	else
		puts 'please answer "yes" or "no".'
	end
end

end
puts "Hello, and thank you for..."
puts 
ask 'do you like eating tacos?'
ask 'do you like eating burritos?'
wets_bed = ask 'Do you wet the bed?'
ask 'do you like eating chimichangas?'
ask 'do you like eating sopapllas?'
puts 'just a few more questions'
ask 'do you like drinking horchata?'
ask 'do you like eating flautas?'
puts
puts 'DEBREIFING'
puts 'thankyou for...'
puts
puts wets_bed