def ask question
  while true
    puts question
    reply = gets.chomp.downcase
    return true if reply == 'yes'
    return false if reply == 'no'
    puts 'please answer yes or no'
  end
end

puts(ask('do you like eating tacos?'))
