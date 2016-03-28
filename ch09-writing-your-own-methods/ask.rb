def ask question
  while true
    puts question
    reply = gets.chomp.downcase
    if (reply == 'yes' || reply == 'no')
      if reply == 'yes'
        return true
      else
        return false
      end
      break
    else
      puts 'Please answer "yes" or "no".'
    end
  end

  puts 'Hello, and thank you for...'
  puts
  ask 'Do you like eating tacos?' # Ignore this return value ask 'Do you like eating burritos?' # And this one
  wets_bed = ask 'Do you wet the bed?' # Save this return value ask 'Do you like eating chimichangas?'
  ask 'Do you like eating sopapillas?'
  puts 'Just a few more questions...'
  ask 'Do you like drinking horchata?'
  ask 'Do you like eating flautas?'
  puts
  puts 'DEBRIEFING:'
  puts 'Thank you for taking the time to help with'
  puts 'this experiment. In fact, this experiment'
  puts 'has nothing to do with Mexican food. It is'
  puts 'an experiment about bed-wetting. The Mexican'
  puts 'food was just there to catch you off guard'
  puts 'in the hopes that you would answer more'
  puts 'honestly. Thanks again.'
  puts
  puts wets_bed
end
