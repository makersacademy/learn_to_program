def ask question
  while true
    puts question
    reply = gets.chomp.downcase

    if (reply == 'yes' || reply == 'no')
      if reply == 'yes'
        return true
      end
      break
    else
      puts 'Please answer "yes" or "no".'
    end
  end
  false  
end
