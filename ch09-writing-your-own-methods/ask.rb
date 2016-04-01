def ask(question)
    while true
        puts question
        reply = gets.chomp.downcase
        if (reply == 'yes' || reply == 'no')
            if reply == 'yes' then return true end
            return false
        else
            puts 'Please answer "yes" or "no".'
        end
    end
end