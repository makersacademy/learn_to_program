def ask question
	while true
		puts question
		reply = gets.chomp.downcase

		if reply == 'yes' 
			return true
		elsif reply == 'no'
			return false
		end
			puts 'Please answer "yes" or "no".'
		end
	end

	puts 'Hello, and thank you for participating'
	puts

	ask 'Do you like eating tacos?' # Ignore
	ask 'Do you like eating burritos?' # Ignore
	wets_bed = ask 'Do you wet the bed?' # Save
	ask 'Do you like eating chimichangas?' # Ignore 
	ask 'Do you like eating sopapillas?' # Ignore
	puts 'Just a few more questions...'
	ask 'Do you like drinking horchata?' # Ignore
	ask 'Do you like eating flautas?' # Ignore

	puts
	puts 'DEBRIEFING'
	puts 'Thank you for partcipating in this questionaire.'
	puts
	puts wets_bed