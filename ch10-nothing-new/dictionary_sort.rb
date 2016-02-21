def dictionary_sort some_array # This "wraps" recursive_sort.  ????
	recursive_sort some_array, []
end
def recursive_sort unsorted_array, sorted_array 
	small = unsorted_array[0]
	small_index = 0
	if unsorted_array.size == 0
		return sorted_array
	else
		unsorted_array.each_with_index do |word,index| 
			if word.downcase <= small.downcase
				small = word
				small_index = index
			end
		end
		sorted_array << small
		unsorted_array.delete_at(small_index)
		recursive_sort(unsorted_array, sorted_array)
	end
end

# dictionary_sort(['CAN','feel','singing.','like','A','Z','can'])
