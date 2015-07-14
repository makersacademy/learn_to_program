def ask question
    while true
    question
    reply = gets.chomp

    if (reply == 'yes' || reply == 'no')
      return reply == 'yes' ? true : false
    else
      'Please answer "yes" or "no".'
    end
  end
end