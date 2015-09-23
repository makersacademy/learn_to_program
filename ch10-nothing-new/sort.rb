def sort some_array
	recursive_sort some_array, []
end

def recusive_sort unsorted_array, sorted_array
	if unsorted_array.length <= 0
		return sorted
	end

	smallest = unsorted_array.pop
	still_unsorted = []
	unsorted.each {|object|
		if object < smallest
			still_unsorted.push smallest
			smallest = object
		else 
			still_unsorted.push object
		end
			}
		sorted.push smallest
		recursive_sort still_unsorted, sorted
end
