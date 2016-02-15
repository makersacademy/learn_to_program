# The book original version. Challenge: Improve the ask method. Remove 'anser' variable, will need to use 'return' to exit the loop.
# def ask question
#   while true
#     puts question
#     reply = gets.chomp.downcase
#     if (reply == 'yes' || reply == 'no')
#       if reply == 'yes'
#         answer = true
#       else
#         answer = false
#       end
#       break
#     else
#       puts "Please answer 'yes' or 'no'."
#     end
#   end
#   answer
# end

def ask question
  while true
    puts question
    reply = gets.chomp.downcase
      if reply == "yes"
        return true
      elsif reply == "no"
        return false
      else
        puts "Please answer 'yes' or 'no'."
      end
  end
end

puts ' Hello, and thank you for...'
puts
ask 'Do you like a?'
ask 'Do you like b?'
wets_bed = ask 'Do you wet the bed?'
ask 'Do you like c?'
ask 'Do you like d?'
puts 'Just a few more questions...'
ask 'Do you like e?'
ask 'Do you like f?'
puts
puts 'DEBRIEFING:'
puts 'Thank you for...'
puts
puts wets_bed
