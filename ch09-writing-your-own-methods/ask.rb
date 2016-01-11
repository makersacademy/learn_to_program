def ask question

puts question
reply = gets.chomp.downcase

while reply != 'yes' && reply != 'no'
puts 'Please answer "yes" or "no".'
puts question
reply = gets.chomp.downcase
end

if reply == 'yes'
return true
else
return false
end

end

puts 'Hello, and thank you for ...'
puts

ask 'Do you like eating tacos?'
ask 'Do you like eating burritos?'
wets_bed = ask 'Do you wet the bed?'
ask 'Do you like eating chimichangas?'
ask 'Do you like eating sopapillas?'
puts 'Just a few more questions...'
ask 'Do you like drinking horchata?'
ask 'Do you like eating flautas?'

puts
puts 'DEBRIEFING'
puts 'Thank you for ...'
puts
puts wets_bed