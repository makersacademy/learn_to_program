def ask question
  puts question
  reply = gets.chomp.downcase
  if !['yes', 'no'].include?(reply)
    puts 'Please answer "yes" or "no"'
    ask question
  else
    return reply == 'yes'
  end
end
