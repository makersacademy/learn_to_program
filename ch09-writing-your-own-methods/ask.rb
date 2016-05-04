def ask question
  correct = false
  while !correct
    puts question
    reply = gets.chomp.downcase

    if reply == 'yes' || reply == 'no'
      correct = true
      if reply == 'yes'
        answer = true
      else
        answer = false
      end
    else
      puts 'Please answer "yes" or "no".'
    end
  end
  answer
end