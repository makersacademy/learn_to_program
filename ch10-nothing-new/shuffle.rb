def shuffle arr
	final_array = []
	while arr.length > 0
		rand_index = rand(arr.length)
		intial_index = 0
		array = []
		arr.each do |w|
				if intial_index == rand_index
					final_array.push(w)
				else
					array.push(w)
				end

				intial_index = intial_index + 1
				end
	arr = array
	end

return final_array
end