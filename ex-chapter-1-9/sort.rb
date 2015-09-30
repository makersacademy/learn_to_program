array = []
puts "write a word"
word = nil
while word != ''
	word = gets.chomp
	array.push word.to_s
end
puts array.sort
