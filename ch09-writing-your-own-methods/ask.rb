def ask question
  while true
  puts question
  reply = gets.chomp.downcase
  if (reply == 'yes'|| reply == 'no')
    
    if reply == 'yes'
      return true
    else
      return false
      
    end #end 2nd if
    break
  else
    puts 'please answer"yes" or "no'
end #end conditional
  end #end while


end #ends def


puts 'Hello, and thank you for...'
puts

ask 'Do you like eating tacos?'      # We ignore this return value.
ask 'Do you like eating burritos?'
wetsBed = ask 'Do you wet the bed?'  # We save this return value.
ask 'Do you like eating chimichangas?'
ask 'Do you like eating sopapillas?'
ask 'Do you like eating tamales?'
puts 'Just a few more questions...'
ask 'Do you like drinking horchata?'
ask 'Do you like eating flautas?'

puts
puts 'DEBRIEFING:'
puts 'Thank you for...'
puts
puts wetsBed