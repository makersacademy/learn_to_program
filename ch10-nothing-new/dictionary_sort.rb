def dictionary_sort arr
  sorted_array = []

	while !arr.empty?
  	index = arr.index(arr.min)
  	sorted_array << arr.delete_at(index)
  	end

	return sorted_array
end