# Completed in pair programming Kevin McCarthy
def shuffle arr
	shuffled_arr = []

	arr.size.times  do
		index = rand(arr.length)
		shuffled_arr << arr[index]
		arr.delete_at(index)
	end
	return shuffled_arr
end