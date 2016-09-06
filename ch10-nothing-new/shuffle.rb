def shuffle(some_array)
	recursive_shuffle(some_array, [])
end

def recursive_shuffle(unshuffled_array, shuffled_array)
	rand_word = [] 
	if unshuffled_array.length == 0
		return shuffled_array.compact
	else
		rand_word << unshuffled_array[rand(unshuffled_array.length)]
		shuffled_array << rand_word[0]
		rand_word.each do |word|
			unshuffled_array.delete_at(unshuffled_array.index(word)) end
		recursive_shuffle(unshuffled_array, shuffled_array)	
	end
end