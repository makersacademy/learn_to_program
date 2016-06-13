
puts 'cat' < 'dog'
puts 'cat' < 'Dog'
puts 'cat'.downcase < 'Dog'.downcase
puts 'cat' > 'dog'

puts "What's your name?"
name = gets.chomp
puts "Hello, #{name}!"
if name == "Noby"
	puts "What a lovely name!"
else
	puts "You are not Noby."
end
