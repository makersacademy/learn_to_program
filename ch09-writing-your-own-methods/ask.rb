def ask question
  while true
    puts question
    reply = gets.chomp.downcase

    if reply == "yes"
      answer = true
    elsif reply == "no"
      answer = false
    end
    break

    puts "Please answer with a 'yes' or 'no'."
  end
  answer
end
