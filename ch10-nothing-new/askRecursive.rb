def ask_recursive question
  puts question
  reply = gets.chomp.downcase

  if reply == 'yes'
    true
  elsif reply == 'no'
    false
  else
    puts 'Please answer with "yes" or "no".'
    ask_recursive question
  end
end

ask_recursive 'Do you like tacos?'
