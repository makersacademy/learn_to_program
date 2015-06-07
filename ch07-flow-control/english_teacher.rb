puts 'Hello, and welcome to seventh grade English.'
puts 'My name is Mrs. Gabbard. And your name is....?'
name = gets.chomp

if name == name.capitalize
	#she's civil
	puts "Please take a seat, #{name}."
else 
	#she gets mad
	puts "#{name}? You mean #{name.capitalize}, right?"
	puts "Don\'t you know how to spell your name?"
	reply = gets.chomp
	if reply.downcase == 'yes'
		puts "Hmph! Well, sit down!"
	else
		puts "GET OUT!"
	end
end