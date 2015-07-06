 def ask question
   while true
      puts question
      reply = gets.chomp.downcase
   if (reply == 'yes' || reply == 'no')
    return true if reply == 'yes' 
    return false if reply == 'no'
    end
      puts 'please answer yes or no?'	
  end    
end

food = ask 'Do you like eating monkey'
