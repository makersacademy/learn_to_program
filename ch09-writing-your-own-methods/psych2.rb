def ask question
  while true
    puts question
    reply = gets.chomp.downcase

    if  (reply == 'yes' || reply == 'no')
      reply == 'yes'? true,false
    end
    return
  end
end

  puts "Hello and thank you for..."
  puts

  ask "Do you like eating tacos?"       #ignore this and return value
  ask "Do you like eating burritos?"    #and this one
  wets_bed = ask "Do you wet the bed?"  #Save and return this value
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
