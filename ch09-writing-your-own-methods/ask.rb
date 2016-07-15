def ask question

  while true
    puts question
    r = gets.chomp.to_s.downcase
      if r == "yes"
        return true
      elsif r == "no"
        return false
      else
        puts "Please answer 'yes' or 'no'."
      end
      
  end
end
