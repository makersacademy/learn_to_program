def ask(question) # defining the method ask. argument is question
  while true
    puts question # while there are questions to ask
    reply = gets.chomp.downcase
    if (reply == 'yes' || reply == 'no') # if the reply is 'yes' OR 'no'
      if reply == 'yes'
      return true
      else
      return false
      end
    else
      puts 'Please answer "yes" or "no".' #if reply is neither yes or no, put warning and ask again
    end
  end
  return wets_bed #This is what we want to return, as true or false
end

puts 'Hello, and thank you for...'
puts

ask 'Do you like eating tacos?'     # Ignore this return value - not saving it to any var
ask 'Do you like eating burritos?'  # And this one
wets_bed = ask 'Do you wet the bed?' # Saves return value to var 'wet_bed'
ask 'Do you like chimichangas?'
ask 'Do you like sopapillas?'
puts 'Just a few more questions...'
ask 'Do you like drinking horchata?'
ask 'Do you like eating flautas?'

puts
puts 'DEBRIEFING'
puts 'Thanks for...'
puts
puts wets_bed
