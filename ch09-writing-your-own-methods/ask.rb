def ask question
  # your code here
	puts question
	reply = gets.chomp.downcase
	reply == "yes" ? true : (reply == "no" ? false : puts('Please answer "yes" or "no".'))
	
end
