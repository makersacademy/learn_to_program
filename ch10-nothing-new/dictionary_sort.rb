def dictionary_sort arr
	recursive_sort arr, []
end

def recursive_sort unsorted_array, sorted_array
	return sorted_array if unsorted_array.length <= 0

	item = unsorted_array.pop
	still_unsorted = []
	unsorted_array.each do |x| 
		if x.downcase < item.downcase #this is the only change I made to the non-dictionary sort code
			still_unsorted.push item
			item = x 
		else
			still_unsorted.push x
		end
	end

	sorted_array.push item

	recursive_sort still_unsorted, sorted_array
end