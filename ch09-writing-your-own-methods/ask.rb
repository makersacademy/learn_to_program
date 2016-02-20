def ask question
  while true
    puts question
    reply = gets.chomp.downcase
    if (reply == 'yes' || reply == 'no')
      reply == 'yes' ? (return true) : (return false)
    else
      puts 'Please answer "yes" or "no".'
    end
  end
end
