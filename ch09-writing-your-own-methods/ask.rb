def ask question
  while true
    puts question
    reply = gets.chomp.downcase
    if reply == "yes"
      return true
    end
    if reply == "no"
      return false
    end

    puts "please answer yes or no"
  end

  answer

end

ask "Do you like tacos?"
