def shuffle arr
	shuffled_array = []
	while arr.length > 0
		random_index = rand(arr.length)
		trash_arr = []
		curr_index = 0

		arr.each do |item|
			if curr_index == random_index
				shuffled_array.push item
			else
				trash_arr.push item
			end
			curr_index = curr_index + 1
		end
		arr = trash_arr
	end
	shuffled_array
end