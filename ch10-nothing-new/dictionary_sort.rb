def sort(some_array)
	recursive_sort(some_array, [])
end

def recursive_sort(unsorted_array, sorted_array)
	smallest = unsorted_array.reduce { |memo, word|  memo.downcase < word.downcase ? memo : word}
	unsorted_array.delete_at(unsorted_array.index(smallest))
	sorted_array << smallest
	if unsorted_array.length > 0
		recursive_sort(unsorted_array, sorted_array)
	else
		sorted_array
	end
end

puts sort(["Blue", "red", "pink", "Yellow", "Purple", "green"])