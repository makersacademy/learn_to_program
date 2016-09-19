def ask question
  while true
    puts question
    reply = gets.chomp.downcase

    return true if reply == 'yes'
    return false if reply == 'no'

    puts 'Please answer "yes" or "no".'
  end
  answer
end

ask 'Do you wanna dance?'
ask 'Do you wanna sleep?'
ask 'Do you wanna eat?'
likes_it = ask 'Do you wanna eat tacos?'
puts likes_it
