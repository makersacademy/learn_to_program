def ask question
  while true
	  puts question
	  reply = gets.chomp.downcase

	  if(reply == 'yes' || reply == 'no')
		  if reply == 'yes'
			  return answer = true
		  else
			  return answer = false
		  end
		  break
	  else
		  puts 'Please answer "yes" or no".'
	  end
  end
end

ask 'Do you like eating tacos?'
ask 'Do you like eating burritos?'
wets_bed = ask 'Do you wet the bed?'
ask 'Do you like eating chimichangas?'
ask 'Do you like eating sopapillas?'
puts 'Just a few more questions...'
ask 'Do you like drinking horchata?'
ask 'Do you like eating flautas?'

puts wets_bed


