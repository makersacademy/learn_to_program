def ask question
    puts question
    reply = gets.chomp.downcase
    unless (reply == "yes" || reply == "no")
      puts 'Please answer "yes" or "no".'
      ask question
    else
      reply == "yes" ? true : false
    end
end
