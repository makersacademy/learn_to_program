def ask question
  while true
    puts question
    reply = gets.chomp.downcase
    return true if reply == 'yes'
    return false if reply == 'no'
    puts "Please answer yes/YES or no/NO"
  end
end

# I though that refactoring the whole method would be an ideal solution rather than taking just the return

#p ask("Testing answer")
