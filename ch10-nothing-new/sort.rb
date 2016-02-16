 # find out which item is smallest
 # put the smallest item in the sorted list
 # put the other items back in the still-unsorted list
 # do the same again
 # until sorted list is empty

def sort arr
  recursive_sort arr, []
end

def recursive_sort unsorted_array, sorted_array
	return sorted_array if unsorted_array.length <= 0

	item = unsorted_array.pop
	still_unsorted = []
	unsorted_array.each do |x| 
		if x < item
			still_unsorted.push item
			item = x 
		else
			still_unsorted.push x
		end
	end

	sorted_array.push item

	recursive_sort still_unsorted, sorted_array
end