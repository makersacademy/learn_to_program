# starting condition
list = [ ]
# as the question
puts 'Enter a list of words, press \'enter\' to quit and they will be returned randomly shuffled.'
word = 'one'
# get the words in the first list
while word != ''
	word = gets.chomp 
	list.push word
end
# define shuffle method
def shuffle array
	# starting conditions of local variables
	randomized = [ ]
	count = -2
	x = 0
	y = 0
	array.each do |word|
		count = count + 1
	end
	while y <= count
		x = rand(count+1)
		if array[x] != 'used'
			randomized.push array[x]
			array [x] = 'used'
			y = y + 1
		end
	end
	puts randomized
end

shuffle list