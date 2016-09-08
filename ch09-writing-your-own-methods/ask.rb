def ask question
  while true
    puts question
    reply = gets.chomp.downcase

    return true if reply =='yes'
    return false if reply == 'no'
    puts 'Please answer "yes" or "no".'
  end
end


puts 'Hello, and thank you for...'
puts

ask 'Do you like eating tacos?'
ask 'Do you like eating burritos?'
wets_bed = ask 'Do you wet the bed?'
ask 'Do you like eating chimichangas?'

puts
puts 'DEBRIEFING'
puts 'Thank you for...'
puts
puts wets_bed
