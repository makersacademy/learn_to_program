def sort(some_array)
	recursive_sort(some_array, [])
end

def recursive_sort(unsorted_array, sorted_array)
	#loop through unsorted array to find smallest word
	#push to sorted array
	smallest = unsorted_array.reduce { |memo, word|  memo.downcase < word.downcase ? memo : word}
	unsorted_array.delete_at(unsorted_array.index(smallest))
	sorted_array << smallest
	#repeat (recursion)
	#if unsorted array length > 0, repeat, else return sorted array
	if unsorted_array.length > 0
		recursive_sort(unsorted_array, sorted_array)
	else
		sorted_array
	end
end
