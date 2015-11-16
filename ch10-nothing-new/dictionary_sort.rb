def dictionary_sort arr
	recursive_dictionary_sort arr, []
end

def recursive_dictionary_sort arr, sorted_arr
	if arr.size <= 0
		return sorted_arr
	end

	smallest = arr.pop
	still_unsorted = []

	arr.each {|x| if x.downcase < smallest.downcase
			still_unsorted << smallest
			smallest = x
		else
			still_unsorted << x
		end 
	}

	sorted_arr << smallest

	recursive_dictionary_sort still_unsorted, sorted_arr
end