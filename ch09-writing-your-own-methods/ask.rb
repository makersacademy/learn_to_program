def ask question
  puts question
  reply = gets.chomp

  unless (reply.downcase == "yes") || (reply.downcase == "no")
      puts "Please answer \"yes\" or \"no\"."
      ask question
  end

reply.downcase == "yes" ? true : false

end

ask "Yes or No?"
