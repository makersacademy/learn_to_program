def ask question
  puts question
  reply = gets.chomp.downcase
  return true if reply == 'yes'
  return false if reply == 'no'
  puts 'Please answer "yes" or "no".'
  ask question
end
