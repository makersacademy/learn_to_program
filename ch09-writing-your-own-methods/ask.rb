def ask question
  puts question
  reply = gets.chomp.downcase
  if reply != 'yes' || reply != 'no'
    puts "Please answer \"yes\" or \"no\"."
    puts question
    reply = gets.chomp.downcase
  end
  reply == 'yes' ? true : false
end
