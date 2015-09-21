# LEARNING TO PROGRAM WITH CHRIS PINE, 9.5 ex 1
###############################################
# Improved ask method. That ask method I showed you was OK, but I bet you
# could do better. Try to clean it up by removing the answer variable. You'll
# have to use return to exit from the loop. (Well, it will get you out of the
# whole method, but it will get you out of the loop in the process.) How do
# you like the resulting method? I usually try to avoid using return (a
# personal preference), but I might make an exception here.

def ask question
  loop do
    puts question
    reply = gets.chomp.downcase

    return true if reply == 'yes'
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
ask 'Do you like eating sopapillas?'
puts 'Just a few more questions...'
ask 'Do you like drinking horchata?'
ask 'Do you like eating flautas?'
puts
puts 'DEBRIEFING:'
puts 'Thank you for...'
puts
puts wets_bed
