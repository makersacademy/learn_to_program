def ask question
    while true
        puts question
        reply = gets.chomp.downcase
        if reply == 'yes'|| reply == 'no'
            if reply == 'yes'
                return true
                else
                return false
            end
            break
            else
            puts 'Please answer "Yes" or "No".'
        end
    end
    #return
    #puts "do you like?"
end

ask 'Do you like tacos?'