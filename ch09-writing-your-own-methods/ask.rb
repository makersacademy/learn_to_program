#!/usr/bin/env ruby

#move yes/no filter out of main method 
def yes_no reply
	if reply == 'yes'
		return true	
	elsif reply == 'no'
		return false
	else
		puts "Please answer yes or no"
		return nil
	end
end


def ask question
	while true
		puts question  
		reply = gets.chomp.downcase
		answer = yes_no reply
		if answer!= nil
			return answer
		end		
	end
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
ask 'Do you like eating flautas?'
puts
puts 'DEBRIEFING:'
puts 'Thank you for...'
puts
puts wets_bed
