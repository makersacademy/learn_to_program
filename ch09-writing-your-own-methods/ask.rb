def ask question
  while true 
	  	puts question
	  	reply = gets.chomp.downcase
	  	return true if reply =='yes'
	  	return false if reply =='no'
	  	puts 'Please answer "yes" or "no".'
  	end
end
burritos = ask 'Do you like burritos?'
puts burritos