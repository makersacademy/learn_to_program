puts 'Hello, what\'s your name?'
name = gets.chomp
puts 'Hello, ' + name + '.'

if name == 'Lucy'
	puts 'What a lovely name!'
else
	if name == 'Richard'
		puts 'What a horrible name!'
	end
end