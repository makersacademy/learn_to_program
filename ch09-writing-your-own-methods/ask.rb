def ask(question)
     
  puts question
  reply = gets.chomp.downcase
  	  
  if reply == "yes" 
    true  
  elsif reply == "no"
  	false	 
  else
		puts 'Please answer "yes" or "no".'
		ask(question)
  end

end

