def ask question
    
    while true
    
    puts question
    reply = gets.chomp.downcase
    
    if (reply == "yes" || reply == "no")
        return true
    end
    
     puts "Please answer yes or no"
     
    end

end

ask "Do you like Coffee?"# your code here
end