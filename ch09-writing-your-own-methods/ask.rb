def ask question
  while true
    puts question
    reply = gets.chomp.downcase
    if reply == 'yes' or reply == 'no'
      return reply == 'yes' ? true : false
    end
    puts 'Please answer "yes" or "no".'
  end
end