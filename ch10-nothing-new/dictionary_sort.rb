def dictionary_sort arr
	recursive_sort arr, []
end

def recursive_sort(unsorted_array, sorted_array)
	if unsorted_array.length <= 0
		return sorted_array
	else
		# create a new lower case array so we don't have to worry about case
		lower_case_array = []
		unsorted_array.each { |w| lower_case_array.push(w.downcase) }
		# find the lowest value string in the lower case array
		word = lower_case_array.min
		# record the index of the word - this will apply to both the lower case array and the unsorted array
		word_index = lower_case_array.index(word)
		# push the word from the unsorted array to the sorted array
		sorted_array.push(unsorted_array[word_index])
		# delete the word from BOTH the unsorted and the lower case arrays
		lower_case_array.delete_at(word_index)
		unsorted_array.delete_at(word_index)
		# call the method recursively
		recursive_sort(unsorted_array, sorted_array)
		return sorted_array
	end
end