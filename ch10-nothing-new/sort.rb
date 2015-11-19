
def sort arr
	recursive_sort(arr, [])
end

def recursive_sort(unsorted, sorted)
	if unsorted.length == 0 
		return sorted 
		#if unsorted array only has one item, then there is nothing to sort
	end
	
	smallest = unsorted.pop 
	# removes last element from unsorted 
	still_unsorted = [] 

	unsorted.each do |element|
		if element < smallest 
		#when an element is smaller than the last element of unsorted
			still_unsorted.push smallest 
			#last element of unsorted gets pushed into still_unsorted
			smallest = element 
			#now the last element of unsorted is the smallest element 
		else 
			still_unsorted.push element 
			#all other elements that is not the smallest gets pushed into still_unsorted
		end
	end 
	sorted.push smallest 
	#pushed the smallest of unsorted into sorted 

	recursive_sort(still_unsorted,sorted)
	#recursively runs the same code, find smallest in still_unsorted, push to sorted, until nothing is left
end	