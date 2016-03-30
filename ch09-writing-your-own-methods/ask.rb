def ask question
 while true 
 puts question
 reply = gets.chomp.downcase
 if reply == 'yes'
 elsif reply == 'no'
 break
 else
   return "Please answer yes or no"
 end
 end
end
