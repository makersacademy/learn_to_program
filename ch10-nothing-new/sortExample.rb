def sort arr
	recursive_sort arr, []
end

def recursive_sort (unsorted_array, sorted_array)
	if unsorted_array.length == 0
		return sorted_array
	end
	smallest = unsorted_array.pop
	still_unsorted_array = []

	unsorted_array.each do |tested_object|
		if tested_object < smallest
			still_unsorted_array.push (smallest)
			smallest = tested_object
		else
			still_unsorted_array.push (tested_object)
		end
	end
	sorted_array.push (smallest)
	recursive_sort (still_unsorted_array, sorted_array)
end

puts(sort(['can','feel','singing','like','a','can']))


