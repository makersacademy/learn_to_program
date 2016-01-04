def ask(question)
    puts question
    reply = gets.chomp.downcase
    until (reply == "yes" || reply == "no")
      puts "Please answer 'yes' or 'no'"
      reply = gets.chomp.downcase
    end
    reply == "yes" ? true : false
end
