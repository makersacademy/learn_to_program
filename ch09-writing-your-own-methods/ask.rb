def ask question
  while true
    puts question
    reply = gets.chomp.downcase
    return true if reply == "yes"
    return false if reply == "no"
  end
  puts 'Please answer "yes" or "no".'
end
