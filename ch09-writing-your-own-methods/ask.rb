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
  return
end

ask 'Do you like tacos?'
