def dictionary_sort some_array
	recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
	if unsorted_array.length <= 0
		return sorted_array
	end

	smallest = unsorted_array.pop
	still_unsorted = []
	unsorted_array.each {|object|
		if object.downcase < smallest.downcase
			still_unsorted.push smallest
			smallest = object
		else 
			still_unsorted.push object
		end
			}
		sorted_array.push smallest
		recursive_sort still_unsorted, sorted_array
end
