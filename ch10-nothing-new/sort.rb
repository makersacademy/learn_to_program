def sort some_array
	recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array

	if unsorted_array.length <= 0
		return sorted_array
	end

	smallest = unsorted_array.pop
	still_unsorted = []

	unsorted_array.each do |x|
		if x < smallest
			still_unsorted << smallest
			smallest = x
		else
			still_unsorted << x
		end
	end

	sorted_array << smallest
	recursive_sort still_unsorted, sorted_array

end

puts(sort(["a", "b", "z", "c"]))