def ask question
    while true
         puts question
         reply = gets.chomp.downcase
         if (reply == 'yes' || reply == 'no')
             if reply == 'yes'
                 return true
             break
             else 
                return false
             end
            break
         else
            puts 'Please answer "yes" or "no".'
         end
    end
end
ask 'do you like eating tacos?'
ask 'do you like eating burritos?'
wets_bed = ask 'do you you wet the bed?'
ask 'do you like eating chimichangass?'
ask 'do you like eating sopapillas?'
puts 'Just a few more questions'
ask 'Do you like drinking horchata?'
ask 'do you like eating flautas?'

puts 'Debriefing:'
puts 'Thank you for...'
puts wets_bed
