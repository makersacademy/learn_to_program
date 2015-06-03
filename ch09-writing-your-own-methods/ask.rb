def ask question
  while true
    puts question
    reply = gets.chomp.downcase

    return true if reply == 'yes' # these return values go nowhere until
    return false if reply == 'no' # line 16 where a variable saves the return value
    puts 'Please answer "yes" or "no"'
    end
 end
 puts 'Hello and thank you for taking part in this questionnaire.'
 puts 

ask 'Do you like eating tacos?'  # So this return value gets ignored
ask 'Do you like eating burritos?'
wets_bed = ask 'Do you wet the bed?' # using variable= saves the return value
ask 'Do you like eating chimichangas?'
ask 'Do you like eating sopapillas?'
puts 'Just a few more questions...!'
ask 'Do you like drinking horchata?'
ask 'Do you like eating flautas?'

puts 
puts 'DEBRIEFING:'
puts 'Thank you for answering these questions.'
puts
puts wets_bed
