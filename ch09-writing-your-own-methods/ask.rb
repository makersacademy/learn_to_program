def ask question
  while true
  	puts question
  	reply = gets.chomp.downcase
  	  if reply == 'yes'
  	  	return true
  	  elsif reply == 'no'
  	  	return false
  	  else
  	  	puts 'Please answer "yes" or "no"'
  	  end
  end
end