def ask question
    while true
    puts "Please answer \"yes\" or \"no\"."
    answer = gets.chomp.downcase
        if (answer == "yes" || answer == "no")
            if answer == "yes"
                    return true
            else
            return false
            end
        break
        else
        puts "Yes or no, only"
        end
    end
end