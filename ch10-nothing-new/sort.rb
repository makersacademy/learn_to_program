def sort arr

	recursive_sort arr, []  
end


def recursive_sort unsorted, sorted
	
	return sorted if unsorted.length == 0
		
	still_unsorted = []
	smallest = unsorted.pop
		
	unsorted.each do |item|
		if item < smallest
		still_unsorted.push(smallest)
		smallest = item
		else still_unsorted.push(item)			
		end
	end

	sorted.push(smallest)	
	recursive_sort still_unsorted, sorted

	return sorted
end

