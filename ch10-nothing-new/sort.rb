def sort arr
	recursive_sort arr, []
end

def recursive_sort(unsorted_array, sorted_array)
	if unsorted_array.length <= 0
		return sorted_array
	else
		word = unsorted_array.min
		word_index = unsorted_array.index(word)
		unsorted_array.delete_at(unsorted_array.index(word))
		sorted_array.push(word)
		sorted_array
		recursive_sort(unsorted_array, sorted_array)
	end
end