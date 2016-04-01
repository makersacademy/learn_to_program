def sort arr
	recursive_sort arr, []
end

def recursive_sort unsorted, sorted
	if unsorted.length <= 0
		return sorted
	end

	smallest = unsorted.pop
	still_unsorted = []

	unsorted.each do |test_object|
		if test_object.downcase < smallest.downcase
			still_unsorted.push(smallest)
			smallest = test_object
		else
			still_unsorted.push(test_object)
		end
	end

	sorted.push smallest
	rec_dict_sort still_unsorted, sorted
end
