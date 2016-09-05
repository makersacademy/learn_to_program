def ask question
  puts question
  reply = gets.chomp.downcase
  if (reply != "yes" && reply != "no")
    puts "Please answer \"yes\" or \"no\"."
  else
    if reply == "yes"
      return true
    else
      return false
    end
  end
end
