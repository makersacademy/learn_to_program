def shuffle(array)
	rec_shuffle(array, [])
end

def rec_shuffle(initial_array, shuffled_array)
	#pick element from array at random
	rand_index = rand(initial_array.length)
	element = initial_array[rand_index]
	#add to shuffled array
	shuffled_array << element
	#remove from initial array
	initial_array.delete_at(rand_index)
	#repeat 
	if initial_array.length > 0
		rec_shuffle(initial_array, shuffled_array) 
	else
		shuffled_array
	end
end

puts shuffle(["house", "family", "mother", "son", "car", "horse"])