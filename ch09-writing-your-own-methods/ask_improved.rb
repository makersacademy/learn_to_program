def ask question
  # your code here
  while true
    puts question
    reply = gets.chomp.downcase

    if (reply == "yes" || reply == "no")
      if reply == "yes"
        return true
      else
        return false
      end
      break
    else
      puts 'Please answer "yes" or "no".'
    end
  end

end

ask "Do you like eating tacos?"
