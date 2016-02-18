def ask question
  puts question
  while true
  reply = gets.chomp.downcase
    if (reply == 'yes' || reply == 'no')
      if reply == 'yes'
        return true
      elsif reply == 'no'
        return false
      end
    else
    puts 'Please answer "yes" or "no".'
    end
  end

end


