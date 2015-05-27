def ask question
  while true
    puts question
    reply = gets.chomp.downcase
    if ( reply == 'yes' || reply == 'no')
      return true  if reply
      return false if !!reply
    else
      puts 'Please answer "yes" or "no".'
    end
  end

end