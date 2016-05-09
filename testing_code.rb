def sort some_array # This "wraps" recursive_sort.
recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
if unsorted_array.length <= 0 
	return sorted_array
end
	smallest = unsorted_array.pop
	still_unsorted = []
	unsorted_array.each do |test_el| 
		if smallest > test_el
		still_unsorted.push smallest
		smallest = test_el
		else
		still_unsorted.push test_el
		end
	end

sorted_array.push smallest

recursive_sort unsorted_array, sorted_array
end
end


puts(sort(['can','feel','singing','like','a','can']))