def ask question

  while true
    puts question
    reply = gets.chomp.downcase

    if (reply == 'yes' || reply == 'no')
      if reply == 'yes'
        return true
      elsif reply == "no"
        return false
      end
    else
    puts 'Please answer "yes" or "no".'
    end
end
end

puts 'Hello, and thank you for...'

puts

ask 'Do you like eating tacos?' # Ignore this return value

wets_bed = ask 'Do you wet the bed?' # Save this return value

ask 'Do you like eating chimichangas?'

puts 'Just a few more questions...'

ask 'Do you like eating flautas?'

puts

puts 'DEBRIEFING:'

puts 'Thank you for...'

puts

puts wets_bed