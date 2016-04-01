def ask question
  while true
    puts question
    reply = gets.chomp.downcase
    return answer = true if reply == 'yes'
    return answer = false if reply == 'no'
    puts 'Please answer "yes" or "no".' #'' messed up
  end
  answer
end
