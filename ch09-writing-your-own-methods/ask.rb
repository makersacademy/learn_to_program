def ask(question)
  while true do
    puts question
    reply = gets.chomp.downcase
      if (reply == "yes") || (reply == "no")
        if (reply == "yes")
          return true
        else
          return false
        end
      else
        puts 'Please answer "yes" or "no"'
      end
  end
end