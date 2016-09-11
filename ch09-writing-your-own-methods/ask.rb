def ask question
  # your code here
  while true
    puts question
    reply = gets.downcase
    if reply == 'yes'
      return true
    end
    if reply == 'no'
      return false
    end
    puts 'Please answer "yes" or "no" .'
  end

end
