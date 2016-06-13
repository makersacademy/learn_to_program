wordList =[]
exit = false
while exit == false
	puts "Please type in your word to add to your word list."
	word = gets.chomp
	if word == ""
		exit = true
	else
		wordList.push word
		puts "your word #{word} is now added to the list."
	end
end
puts "Words in your word list are:"
puts wordList.sort!