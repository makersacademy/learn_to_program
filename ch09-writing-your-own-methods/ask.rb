def ask question
  puts question

  while true
    reply = gets.chomp.downcase
      if reply == 'yes' || reply == 'no'
        return true if reply == 'yes'
        return false if reply == 'no'
      break
    else
      puts 'Please answer "yes" or "no"'
    end
  end
end
