def shuffle arr
  recursive_shuffle(arr, [])
end


def recursive_shuffle(array, shuffled_array)
	
	if array.length == 0
		return shuffled_array
	end

	random = array.sample
	
	array.delete_at(array.index(random))
	shuffled_array.push(random)
	
	recursive_shuffle(array, shuffled_array)

end

puts shuffle([1,2,3,4,5])
