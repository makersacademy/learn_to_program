def ask question
  until false
    puts question
    reply = gets.chomp.downcase

    if reply == "yes"
      return true
    end

    if reply == "no"
      return false
    end
  puts "Please answer 'yes' or 'no'"
  end
end