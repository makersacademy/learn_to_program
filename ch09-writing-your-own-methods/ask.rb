def ask question
  # your code here
	puts question
	reply = gets.chomp.downcase
	reply == "yes" ? return true : (reply == "no" ? return false : puts('Please answer "yes" or "no".')
end
