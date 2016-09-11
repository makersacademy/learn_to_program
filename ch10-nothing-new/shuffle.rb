def shuffle arr
	recursive_shuffle arr, []
end

def recursive_shuffle(unshuffled_array, shuffled_array)
	total_shuffles = unshuffled_array.length
	shuffle_count = 0
	if shuffle_count >= total_shuffles
		return shuffled_array
	else
		word = unshuffled_array[rand(unshuffled_array.length)]
		word_index = unshuffled_array.index(word)
		unshuffled_array.delete_at(word_index)
		shuffled_array.push(word)
		shuffle_count = shuffle_count + 1
		recursive_shuffle(unshuffled_array, shuffled_array)
	end
end