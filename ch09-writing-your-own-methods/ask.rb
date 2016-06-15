def ask question
  puts question
  while true
    answer = gets.chomp
    if answer == "yes"
      return true
    elsif answer == "no"
      return false
    else
      puts "Please answer \"yes\" or \"no\""
    end
  end
end
