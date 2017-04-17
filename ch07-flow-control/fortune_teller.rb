puts 'I am a fortune teller. Tell me your name?'
name = gets.chomp
puts "Hello, #{name}."

if name == 'Chris'
	puts 'I see great things for your future!'
else
	puts 'Your future is..oh my! Look at the time'
	puts 'I really have to go, sorry.'
end
