def ask question 
  while true
    puts question
    reply = gets.chomp.downcase
    case reply
    when 'yes' then return true
    when 'no' then return false
    else puts "Please answer 'yes' or 'no'."
    end
  end
end

