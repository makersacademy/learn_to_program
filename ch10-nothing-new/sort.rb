def sort(some_array)
	recursive_sort(some_array, [])
end

def recursive_sort(unsorted_array, sorted_array)
	sorted_array << unsorted_array.min
	unsorted_array.delete(unsorted_array.min)
end

p sort(["b", "s", "e", "t", "a"])