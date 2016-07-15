def ask question
  while true 
      puts question
      reply = gets.chomp.downcase
  break if (reply == "yes" || reply == "no")
      puts "Please answer 'yes' or 'no'."
  end
  reply == "yes" ? true : false
end
