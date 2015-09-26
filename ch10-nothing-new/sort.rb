def sort arr
  	recursive_sort(arr, [])
end

def recursive_sort(unsorted_array, sorted_array)
	
	if unsorted_array.length == 0
		return sorted_array
	end
	
	smallest = unsorted_array.min
	
	#If I do just array.delete, it delets all identical elements

	unsorted_array.delete_at(unsorted_array.index(smallest))
	sorted_array.push(smallest)
	
	recursive_sort(unsorted_array, sorted_array)

end