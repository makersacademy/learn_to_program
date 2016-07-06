def ask question

while true
  puts question
  reply = gets.chomp.downcase

  if reply == 'yes'
    return true
    break
  elsif reply == 'no'
    return false
    break
  else
    puts 'Please answer "yes" or "no".'
  end
end
answer
end
