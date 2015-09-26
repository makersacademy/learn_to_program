def dictionary_sort arr
  recursive_dict_sort(arr, [])
end

def recursive_dict_sort(unsorted_array, sorted_array)
	
	if unsorted_array.length == 0
		return sorted_array
	end
	
	#Finding the 'smallest' word. Looks ugly, but do not know how
	#to make it look nicer...

	smallest = unsorted_array[0]
	unsorted_array.each do |word|
		if word.downcase<smallest.downcase
			smallest = word
		end
	end
	
	#If I do just array.delete, it delets all identical elements

	unsorted_array.delete_at(unsorted_array.index(smallest))
	sorted_array.push(smallest)

	recursive_dict_sort(unsorted_array, sorted_array)

end