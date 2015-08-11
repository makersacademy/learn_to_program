def shuffle array
	array_to_shuffle = []
	for i in 0...array.length
		array_to_shuffle << array[i]
	end 
	shuffled_array = []
	for i in 0...array.length
		selected = array_to_shuffle.sample
		shuffled_array << selected
		array_to_shuffle.delete(selected)
	end
	return shuffled_array
end