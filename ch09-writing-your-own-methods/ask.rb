def ask question
  # your code here
  while true
    puts question
    reply = gets.chomp.downcase
    if reply == 'yes'
      return true
    else
      return false
    end
    puts 'Please answer "yes" or "no".'
  end
end