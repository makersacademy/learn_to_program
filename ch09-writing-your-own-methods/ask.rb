def ask question
  while true
    puts question
    reply = gets.chomp.downcase

    if (reply == "yes" || reply == "no")
      if (reply == "yes")
        answer = true
      else
        answer = false
      end
      break
    else
      puts "Please asnwer 'yes' or 'no'."
    end
  end
  answer
end
