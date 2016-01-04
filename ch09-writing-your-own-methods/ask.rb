def ask question
 while true

     puts question
     reply = gets.chomp.downcase
    if reply == 'yes' or reply == 'no'
        if reply == 'yes'
            return true
        end
        if reply == 'no'
            return false
        end
    elsif reply == ''
        break
    else
        puts 'Please, answer "yes" or "no".'
    end
     
 end
end