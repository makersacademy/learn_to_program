def music_shuffle filenames
	mp3_sort = filenames.sort
	mp3_length = filenames.length

	# shuffle twice
	2.times do 
		left_pile_index = 0
		right_pile_index = mp3_length/2
		shuffle = []
		while shuffle.length < mp3_length
			if shuffle.length%2 == 0
				# take care from right pile
				shuffle.push(mp3_sort[right_pile_index])
				right_pile_index = right_pile_index + 1
			else
				# take care from left pile
				shuffle.push(mp3_sort[left_pile_index])
				left_pile_index = left_pile_index + 1
			end 
		end
		mp3_sort = shuffle
	end
	# cut the deck
	array = []
	cut_deck = rand(mp3_length) #index of card to cut at
	index = 0
	while index < mp3_length
		array.push(mp3_sort[(index+cut_deck)%mp3_length])
		index = index + 1
	end
	array
end
