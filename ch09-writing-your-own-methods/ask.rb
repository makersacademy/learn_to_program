def ask question
  puts question
  reply = gets.chomp.downcase

  if reply == "yes"
    return true
  elsif reply == "no"
    return false
  elsif (reply != "yes") && (reply != "no")
    puts 'Please answer "yes" or "no"'
    ask question
  end

end
