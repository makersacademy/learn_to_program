def ask question
  while true
    puts question
    reply = gets.chomp.downcase

    if (reply == 'yes' || reply == 'no')
      #yes is true, no is false
      if reply == 'yes'
        answer = true
      else
        answer = false
      end
      break
    else
      puts 'Please answer with either "Yes" or "No".'
    end
  end

  answer # => This returns the value of answer to the method
end

puts 'Hello, and thank you for...'
puts
ask 'Do you like eating Tacos?'
ask 'Do you like eating Burritos?'
wets_bed = ask 'Do you wet the bed?'
ask 'Do you like eating Chimichangas?'
ask 'Do you like eating Sopapillias?'
puts 'Just a few more questions...'
ask 'Do you ike eating Horchata?'
ask 'Do you like eating Flautas?'
puts
puts 'DEBRIEFING'
puts 'Thank you for...'
puts
puts wets_bed
