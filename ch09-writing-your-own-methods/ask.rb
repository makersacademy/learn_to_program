def ask question
  while true
    puts question
    input = gets.chomp.downcase
    if input == "yes"
      return true
    elsif input == "no"
      return false
    else
      puts "Please answer by 'yes' or 'no'"
    end
  end
end

ask "test question"
