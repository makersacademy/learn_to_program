while true
	puts 'What would you like to ask C to do?'
	request = gets.chomp

	puts 'You say, "C, please ' + request + '"'

	puts 'C\'s response:'
	puts '"C ' + request + '."'
	puts '"Papa ' + request + ', too."'
	puts '"Mama ' + request + ', too."'
	puts '"Ruby ' + request + ', too."'
	puts '"Nono ' + request + ', too."'
	puts '"Emma ' + request + ', too."'

	if request == 'stop'
		break
	end
end