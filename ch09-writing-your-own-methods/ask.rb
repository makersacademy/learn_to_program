def ask(question)
    while true
        puts question
        response  = gets.chomp.downcase
        if response == "yes"
            return true
        end
        if response == "no"
            return false
        end
        puts "Please respond with a 'yes' or a 'no'"
    end
end

ask("Do you like dogs?")
