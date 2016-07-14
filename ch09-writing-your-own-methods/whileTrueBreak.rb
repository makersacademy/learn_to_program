while true
	puts "What is your answer? :"
	response = gets.chomp.downcase
	if response == "stop"
		puts "Stopped"
		break
	else
		puts "Wrong answer!"
	end
	
end
