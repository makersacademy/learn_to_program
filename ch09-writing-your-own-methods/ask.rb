def ask question
  while true
    puts question
    reply = gets.chomp.downcase
  
    if (reply == 'yes' || reply == 'no') 
      if reply == 'yes'
        return true #replaced with return
      else
        return false #replaced with return
      end 
      #removed break command since now using return statements
    else
      puts 'Please answer "yes" or "no".' 
    end
  end

#removed statement here since now using return statements
end



