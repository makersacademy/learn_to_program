def ask question

 while true
   puts question
   reply = gets.chomp.downcase
   noreply = 'Please answer "yes" or "no".'
   return true if reply == 'yes' 
   return false if reply == 'no'
   puts noreply
 end
end

puts 'Hello, and thank you for...'
puts

ask 'Do you like eating tacos?' # Ignore this return value
ask 'Do you like eating burritos?' # And this one
wets_bed = ask 'Do you wet the bed?' # Save this return value
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
