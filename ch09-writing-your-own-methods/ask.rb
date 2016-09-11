def ask question
  while true
    puts question
    reply = gets.chomp.downcase
    
    return true if reply == 'yes'
    return false if reply =='no'
     
    puts 'Please answer yes or no.'
  end
  answer
end
  
choc = ask 'Do you like chocolate?'
puts choc


