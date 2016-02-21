def shuffle arr
	shuff_arr = []

	# Multiline  loop
	while arr.length > 0
		rand_index = rand(arr.length)
		shuff_arr << arr.delete_at(rand(arr.length))
	end

	# Single line loop
	# shuff_arr << arr.delete_at(rand(arr.length)) while arr.length > 0
	
	shuff_arr
end
