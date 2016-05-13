## Improved ask method: clean it up by removing the answer variable; 
#  use return to exit from the loop. 

def ask question

	while true

		puts question

		reply = gets.chomp.downcase

		return true if reply == 'yes' 

		return false if reply == 'no'
		
		puts 'Please answer "yes" or "no".'

	end

end

puts 'Hello, and thank you for...'

# puts "hint: you can use 'y' for \"yes\" & 'n' for \"no\" ..."

ask 'Do you like eating tacos?' # Ignore this return value

ask 'Do you like eating burritos?' # And this one

wets_bed = ask 'Do you wet the bed?' # Save this return value

ask 'Do you like eating chimichangas?'

ask 'Do you like eating sopapillas?'

puts 'Just a few more questions...'

ask 'Do you like drinking horchata?'

ask 'Do you like eating flautas?'

puts 'DEBRIEFING:'

puts 'Thank you for...'

puts wets_bed