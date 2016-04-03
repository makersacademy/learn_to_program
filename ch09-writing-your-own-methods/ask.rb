def ask question
  # Impreove ask method - Chris Pine CH09 - p66
  while true
  	puts question
  	reply = gets.chomp.downcase

  	if (reply == 'yes') || (reply == 'no')
  		if reply == 'yes' then (return true) else (return false) end
  	else
  		puts 'Please answer "yes" or "no".'
  	end
  end
end