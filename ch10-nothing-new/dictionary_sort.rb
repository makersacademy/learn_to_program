def dictionary_sort array
	sorted = []
	while !array.empty?
		sorted << array.delete(array.min)
	end
	return sorted
end