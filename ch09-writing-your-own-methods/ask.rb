def ask question
  while true
    puts question
    reply = gets.chomp.downcase

    if (reply == 'yes' || reply == 'no')
      return true if reply == 'yes'
      return false if reply == 'no'
    else
      puts 'Please answer "yes" or "no".'
    end
    
  end
end
