def ask question
  while true
    puts question
    reply = gets.chomp.downcase
      if (reply == 'yes' || reply == 'no')
        if reply == 'yes'
          true
        else
          false
        end
      else
        puts 'Please answer "yes" or "no".'
      end
  end
end