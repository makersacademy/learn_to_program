def ask question
  while true
    puts question
    reply = gets.chomp.downcase

    if reply == 'yes'
      return true
    end
    if reply == 'no'
      return false
    end
    puts 'Please answer "yes" or "no".'
  end
end

puts 'Hello, and thank you for...'
puts

answer = ask 'Do you like eating tacos?'
puts answer
answer = ask 'Do you like eating burritos?'
wets_bed = ask 'Do you wet bed?'
answer = ask 'Do you like eating chimichangas?'
answer = ask 'Do you like eating sopapillas?'
puts 'Just a few more questions...'
answer = ask 'Do you like drinking horchata?'
answer = ask 'Do you like eating flautas?'

puts
puts 'DEBRIEFING'
puts 'Thanks you for...'
puts
puts wets_bed
