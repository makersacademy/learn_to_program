# ORIGINAL:

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

# puts ask "Do you like eating tacos?"

# IMPROVED:

def ask question
  while true
    puts question
    reply = gets.chomp.downcase

    if (reply == 'yes' || reply == 'no')
      if reply == 'yes'
        return true
      else
        return false
      end
      break
    else
      puts "Please answer 'yes' or 'no'."
    end
  end
end

puts ask "Do you like eating tacos?"