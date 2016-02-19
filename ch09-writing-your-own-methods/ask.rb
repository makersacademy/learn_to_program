def ask question
  goodAnswer = false
  while (not goodAnswer)
    puts question
    reply = gets.chomp.downcase

    if (reply == 'yes' or reply == 'no')
      goodAnswer = true
      return reply == 'yes' ? true : false
    else
      puts 'Please answer "yes" or "no".'
    end
  end
end
