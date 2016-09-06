def ask question
  while true
    puts question
    reply = gets.chomp.downcase

    return true if reply == 'yes'
    return false if reply == 'no'

    puts 'Please answer "Yes" or "No".'
  end
  answer # This is what we return (True or False) from the "While" section
end


puts 'Hello, and thank you for...BLAH BLAH BLAH'
puts

ask 'Do you like eating tacos?' # Ignore this return value ask 'Do you like eating burritos?' # And this one
wets_bed = ask 'Do you wet the bed?' # Save this return value ask 'Do you like eating chimichangas?'
ask 'Do you like eating sopapillas?'
puts 'Just a few more questions...'
ask 'Do you like drinking horchata?'
ask 'Do you like eating flautas?'

puts
puts 'DEBRIEFING:'
puts 'Thank you for... BLAH BLAH BLAH'
puts
puts wets_bed
