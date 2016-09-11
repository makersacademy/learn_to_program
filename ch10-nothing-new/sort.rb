def sort arr # takes an array
	rec_sort arr, [] #calls the function
end


def rec_sort unsorted, sorted # takes 2 arrays. sorted will be initially empty. 
	if unsorted.length <= 0 #  # if the unsorted array is less or equal to 0 the return sorted. 
	  return sorted
	end

	smallest = unsorted.pop # the number at the end of the array is popped and asigned to the variable smallest. 
	still_unsorted = [] 
	
	unsorted.each do |tested_object| # This block of code iterates through each item in the array. If the if the tested_object is smaller than the
		if tested_object < smallest        # smallest is no longer the smallest so it is placed in the still_unsorted array. 
			still_unsorted.push smallest    
			smallest = tested_object        # now the tested item is assigned to the smallest. 
		else
			still_unsorted.push tested_object  # if the tested object is larger than the smallest object than push it to the still_unsorted array
		end
	end
		sorted.push smallest   #Take the newly asigned smallest item and push it to the sorted array. 
		rec_sort still_unsorted, sorted # call the rec_sort function again passing updated still unsorted and sorted arrays through. 
end

puts(sort(['can', 'feel', 'singing', 'like', 'a', 'can']))