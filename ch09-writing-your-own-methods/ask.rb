def ask question 
    while true
    puts question
    reply = gets.chomp.downcase

if (question == "Do you wet the bed?" && reply == 'yes')
	return true
break 
end
if reply == 'no' || 'yes'
	break
else
      puts 'Please answer "yes" or "no".'
end 
end
end

